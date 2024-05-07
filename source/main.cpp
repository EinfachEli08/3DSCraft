#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <3ds.h>

#include <Project.h>
#include <entity/player.h>
#include <entity/PlayerController.h>
#include <gui/DebugUI.h>
#include <gui/Gui.h>
#include <gui/screens/WorldSelectScreen.h>
#include <gui/screens/TitleScreen.h>
#include <rendering/PolyGen.h>
#include <rendering/Renderer.h>
#include <world/ChunkWorker.h>
#include <world/World.h>
#include <world/savegame/SaveManager.h>
#include <world/savegame/SuperChunk.h>
#include <world/worldgen/NormalGen.h>
#include <world/worldgen/CustomGen.h>
#include <world/worldgen/SuperFlatGen.h>

#include <sino/sino.h>

#include <citro3d.h>

bool showDebugInfo = true;  // muss noch besser gemacht werden, vlt. über eine Options Struktur wo auch andere Einstellungen drinne sind

void releaseWorld(ChunkWorker* chunkWorker, SaveManager* saveMgr, World* world) {
	for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
		for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
			World_UnloadChunk(world, world->chunkCache[i][j]);
		}
	}
	chunkWorker->finish();
	World_Reset(world);
	saveMgr->unload();
}

int main() {
	GameState gamestate = GameState_TitleScreen;

	gfxInitDefault();

	gfxSet3D(true);

	romfsInit();

	SuperChunk_InitPools();

	SaveManager::initFileSystem();

	World* world = (World*)malloc(sizeof(World));
	Player* player;
	PlayerController* playerCtrl;
	Player_Init(player, world);
	PlayerController_Init(playerCtrl, player);

	PolyGen* polyGen = new PolyGen(world, player);
	SuperFlatGen* flatGen;
	NormalGen* normalGen;
	CustomGen* customGen;

	SuperFlatGen_Init(flatGen, world);
	NormalGen_Init(normalGen, world);
	CustomGen_Init(customGen, world);


	ChunkWorker* chunkWorker = new ChunkWorker();
	chunkWorker->addHandler(WorkerItemType::WorkerItemType_PolyGen, (ChunkWorkerObjBase*) polyGen);
	chunkWorker->addHandler(WorkerItemType::WorkerItemType_BaseGen, (ChunkWorkerObjBase*) flatGen);
	chunkWorker->addHandler(WorkerItemType::WorkerItemType_BaseGen, (ChunkWorkerObjBase*) normalGen);
	chunkWorker->addHandler(WorkerItemType::WorkerItemType_BaseGen, (ChunkWorkerObjBase*) customGen);

	sino_init();

	Renderer* renderer = new Renderer(world, player, chunkWorker->queue, &gamestate, polyGen);

	DebugUI_Init();

	WorldSelect_Init();

	World_Init(world, chunkWorker->queue);

	SaveManager* saveMgr = new SaveManager(player);
	SaveManager::LoadChunk* loadChunk = new SaveManager::LoadChunk(saveMgr);
	SaveManager::SaveChunk* saveChunk = new SaveManager::SaveChunk(saveMgr);
	chunkWorker->addHandler(WorkerItemType_Load, (ChunkWorkerObjBase*) loadChunk);
	chunkWorker->addHandler(WorkerItemType_Save, (ChunkWorkerObjBase*) saveChunk);

	uint64_t lastTime = svcGetSystemTick();
	float dt = 0.f, timeAccum = 0.f, fpsClock = 0.f;
	int frameCounter = 0, fps = 0;
	while (aptMainLoop()) {
		DebugUI_Text("%d FPS  Usage: CPU: %5.2f%% GPU: %5.2f%% Buf: %5.2f%% Lin: %d", fps, C3D_GetProcessingTime() * 6.f,
			     C3D_GetDrawingTime() * 6.f, C3D_GetCmdBufUsage() * 100.f, linearSpaceFree());
		DebugUI_Text("Player: %f, %f, %f P: %f Y: %f", f3_unpack(player->position), player->pitch, player->yaw);

		renderer->render();

		uint64_t currentTime = svcGetSystemTick();
		dt = ((float)(currentTime / (float)TICKS_PER_MSEC) - (float)(lastTime / (float)TICKS_PER_MSEC)) / 1000.f;
		lastTime = currentTime;
		timeAccum += dt;

		frameCounter++;
		fpsClock += dt;
		if (fpsClock >= 1.f) {
			fps = frameCounter;
			frameCounter = 0;
			fpsClock = 0.f;
		}

		hidScanInput();
		u32 keysheld = hidKeysHeld(), keysdown = hidKeysDown();
		if (keysdown & KEY_START) {
			if (gamestate == GameState_Playing) {
				releaseWorld(chunkWorker, saveMgr, world);

				gamestate = GameState_SelectWorld;

				WorldSelect_ScanWorlds();

				lastTime = svcGetSystemTick();
			}
		}

		circlePosition circlePos;
		hidCircleRead(&circlePos);

		circlePosition cstickPos;
		hidCstickRead(&cstickPos);

		touchPosition touchPos;
		hidTouchRead(&touchPos);

		InputData inputData = (InputData){keysheld,    keysdown,    hidKeysUp(),  circlePos.dx, circlePos.dy,
						  touchPos.px, touchPos.py, cstickPos.dx, cstickPos.dy};

//TODO: Fix da shit, need better scene management
		if(WorldSelectScreen_Previous()){
		//TODO: Doesnt switch
			gamestate == GameState_TitleScreen;
		}else if(TitleScreen_SelectQuit()){
			break;
		}else if(TitleScreen_SelectWorld() && gamestate == GameState_TitleScreen){
			gamestate = GameState_SelectWorld;
		}else if (gamestate == GameState_Playing) {
			while (timeAccum >= 1.f / 20.f) {
				World_Tick(world);

				timeAccum -= 1.f / 20.f;
			}

			PlayerController_Update(playerCtrl, inputData, dt);

			World_UpdateChunkCache(world, WorldToChunkCoord(FastFloor(player->position.x)),
					       WorldToChunkCoord(FastFloor(player->position.z)));
		} else if (gamestate == GameState_SelectWorld) {
			char path[256];
			char name[WORLD_NAME_SIZE] = {'\0'};
			WorldGenType worldType;
			bool newWorld = false;
			if (WorldSelect_Update(path, name, &worldType, &newWorld)) {
				strcpy(world->name, name);
				world->genSettings.type = worldType;

				saveMgr->load(path);

				chunkWorker->setHandlerActive(WorkerItemType_BaseGen, (ChunkWorkerObjBase*) flatGen, world->genSettings.type == WorldGen_SuperFlat);
				chunkWorker->setHandlerActive(WorkerItemType_BaseGen, (ChunkWorkerObjBase*) customGen, world->genSettings.type == WorldGen_Custom);
				chunkWorker->setHandlerActive(WorkerItemType_BaseGen, (ChunkWorkerObjBase*) normalGen, world->genSettings.type == WorldGen_Normal);

				world->cacheTranslationX = WorldToChunkCoord(FastFloor(player->position.x));
				world->cacheTranslationZ = WorldToChunkCoord(FastFloor(player->position.z));
				for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
					for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
						world->chunkCache[i][j] =
						    World_LoadChunk(world, i - CHUNKCACHE_SIZE / 2 + world->cacheTranslationX,
								    j - CHUNKCACHE_SIZE / 2 + world->cacheTranslationZ);
					}
				}

				for (int i = 0; i < 3; i++) {
					while (chunkWorker->working || chunkWorker->queue->queue.length > 0) {
						svcSleepThread(50000000);  // 1 Tick
					}
					World_Tick(world);
				}

				if (newWorld) {
					int highestBlock = 0;
					for (int x = -1; x < 1; x++) {
						for (int z = -1; z < 1; z++) {
							int height = World_GetHeight(world, x, z);
							if (height > highestBlock) highestBlock = height;
						}
					}
					player->position.y = (float)highestBlock + 0.2f;
				}

				gamestate = GameState_Playing;
				lastTime = svcGetSystemTick();  // fix timing
			}
		}
		Gui_InputData(inputData);
	}

	if (gamestate == GameState_Playing) releaseWorld(chunkWorker, saveMgr, world);


	delete saveMgr;

	SuperChunk_DeinitPools();

	free(world);

	sino_exit();

	WorldSelect_Deinit();

	DebugUI_Deinit();

	delete chunkWorker;

	delete renderer;

	romfsExit();

	gfxExit();
	return 0;
}
