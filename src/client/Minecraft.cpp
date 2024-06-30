#include "client/Minecraft.h"

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <3ds.h>

#include "client/gui/DebugUI.h"
#include "client/gui/Gui.h"
#include "client/gui/screens/TitleScreen.h"
#include "client/gui/screens/WorldSelectScreen.h"
#include "client/player/Player.h"
#include "client/player/PlayerController.h"
#include "client/renderer/PolyGen.h"
#include "client/renderer/Renderer.h"
#include "util/Paths.h"
#include "world/World.h"
#include "world/level/chunk/ChunkWorker.h"
#include "world/level/levelgen/CustomGen.h"
#include "world/level/levelgen/NormalGen.h"
#include "world/level/levelgen/SuperFlatGen.h"
#include "world/level/saveddata/SaveManager.h"
#include "world/level/saveddata/SuperChunk.h"
// #include "client/gui/screens/SampleScreen.h"

#include <citro3d.h>
#include <sino/sino.h>

const char* gVersion;
bool gIsDebug;
bool gIsNew3ds;

Minecraft::Minecraft() : gamestate(GameState_TitleScreen) {
	std::string file = Path::root + Path::assets + "minecraft/textures/block/grass.t3x";
	if (access(file.c_str(), F_OK)) {
		Crash("ERROR: Could not find assets, please generate them with instructions from the github README.md.\n\n File not found: %s",
			  file.c_str());
	}
	printf("INFO: Assets found.\n");

	// is new 3ds
	bool isNew3ds;
	APT_CheckNew3DS(&isNew3ds);
	gIsNew3ds = isNew3ds;

	// get version
	u64 programId;
	u16 titleVersion;
	char versionStr[32];
	APT_GetProgramID(&programId);
	APT_GetAppletProgramInfo(programId, 0x20, &titleVersion);
	int major	 = GET_VERSION_MAJOR(titleVersion);
	int minor	 = GET_VERSION_MINOR(titleVersion);
	int revision = GET_VERSION_REVISION(titleVersion);
	snprintf(versionStr, sizeof(versionStr), "v%d.%d.%d", major, minor, revision);
	gVersion = versionStr;

	// is debug
#ifdef DEBUG
	gIsDebug = true;
#else
	gIsDebug = false;
#endif

	gamestate = GameState_TitleScreen;
	SuperChunk::poolsInit();
	SaveManager::initFileSystem();
	chunkWorker = new ChunkWorker();
	world		= new World(chunkWorker->queue);
	player		= new Player(world);
	playerCtrl	= new PlayerController(player);
	polyGen		= new PolyGen(world, player);
	flatGen		= new SuperFlatGen(world);
	normalGen	= new NormalGen(world);
	customGen	= new CustomGen(world);

	chunkWorker->addHandler(Enum::WorkerItemType::PolyGen, (ChunkWorkerObjBase*)polyGen);
	chunkWorker->addHandler(Enum::WorkerItemType::BaseGen, (ChunkWorkerObjBase*)flatGen);
	chunkWorker->addHandler(Enum::WorkerItemType::BaseGen, (ChunkWorkerObjBase*)normalGen);
	chunkWorker->addHandler(Enum::WorkerItemType::BaseGen, (ChunkWorkerObjBase*)customGen);
	sino_init();
	renderer = new Renderer(world, player, chunkWorker->queue, &gamestate, polyGen);

	DebugUI_Init();
	WorldSelect_Init();
	saveMgr	  = new SaveManager(player);
	loadChunk = new SaveManager::LoadChunk(saveMgr);
	saveChunk = new SaveManager::SaveChunk(saveMgr);

	chunkWorker->addHandler(Enum::WorkerItemType::Load, (ChunkWorkerObjBase*)loadChunk);
	chunkWorker->addHandler(Enum::WorkerItemType::Save, (ChunkWorkerObjBase*)saveChunk);

	// setScreen(new SampleScreen());
}

Minecraft::~Minecraft() {
	// if (mScreen)
	//	mScreen->removed();

	SuperChunk::poolsDeinit();
	delete saveMgr;
	delete world;
	WorldSelect_Deinit();
	DebugUI_Deinit();
	delete chunkWorker;
	delete renderer;
	sino_exit();
}

void Minecraft::tick(float dt, float timeFull, float fps) {
	DebugUI_Text("%d FPS  Usage: CPU: %5.2f%% GPU: %5.2f%% Buf: %5.2f%% Lin: %d", fps, C3D_GetProcessingTime() * 6.f,
				 C3D_GetDrawingTime() * 6.f, C3D_GetCmdBufUsage() * 100.f, linearSpaceFree());
	DebugUI_Text("Player: %f, %f, %f P: %f Y: %f", player->position.x, player->position.y, player->position.z, player->pitch, player->yaw);

	renderer->render();

	hidScanInput();
	u32 keysheld = hidKeysHeld();
	u32 keysdown = hidKeysDown();
	u32 keysup	 = hidKeysUp();
	/*if (keysdown & KEY_START) {
		if (gamestate == GameState_Playing) {
			releaseWorld(chunkWorker, saveMgr, world);

			gamestate = GameState_SelectWorld;

			WorldSelect_ScanWorlds();

			lastTime = svcGetSystemTick();
		}
	}*/

	circlePosition circlePos;
	hidCircleRead(&circlePos);

	circlePosition cstickPos;
	hidCstickRead(&cstickPos);

	touchPosition touchPos;
	hidTouchRead(&touchPos);

	InputData inputData = {keysheld, keysdown, keysup, circlePos.dx, circlePos.dy, touchPos.px, touchPos.py, cstickPos.dx, cstickPos.dy};

	// mScreen->tick();

	// TODO: Fix da shit, need better scene management
	if (WorldSelectScreen_Previous()) {
		// TODO: Doesnt switch
		gamestate == GameState_TitleScreen;
	} else if (TitleScreen_SelectQuit()) {
		stop();
	} else if (TitleScreen_SelectWorld() && gamestate == GameState_TitleScreen) {
		gamestate = GameState_SelectWorld;
	} else if (gamestate == GameState_Playing) {
		while (timeFull >= 1.f / 20.f) {
			world->tick();

			timeFull -= 1.f / 20.f;
		}

		playerCtrl->update(inputData, dt);

		world->updateChunkCache(WorldToChunkCoord(FastFloor(player->position.x)), WorldToChunkCoord(FastFloor(player->position.z)));
	} else if (gamestate == GameState_SelectWorld) {
		char path[256];
		char name[WORLD_NAME_LIMIT] = {'\0'};
		Enum::WorldGenType worldType;
		bool newWorld = false;
		if (WorldSelect_Update(path, name, &worldType, &newWorld)) {
			strcpy(world->name, name);
			world->genSettings.type = worldType;

			saveMgr->load(path);

			chunkWorker->setHandlerActive(Enum::WorkerItemType::BaseGen, (ChunkWorkerObjBase*)flatGen,
										  world->genSettings.type == Enum::WorldGenType::SuperFlat);
			chunkWorker->setHandlerActive(Enum::WorkerItemType::BaseGen, (ChunkWorkerObjBase*)customGen,
										  world->genSettings.type == Enum::WorldGenType::Custom);
			chunkWorker->setHandlerActive(Enum::WorkerItemType::BaseGen, (ChunkWorkerObjBase*)normalGen,
										  world->genSettings.type == Enum::WorldGenType::Normal);

			world->cacheTranslationX = WorldToChunkCoord(FastFloor(player->position.x));
			world->cacheTranslationZ = WorldToChunkCoord(FastFloor(player->position.z));
			for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
				for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
					world->chunkCache[i][j] = world->loadChunk(i - CHUNKCACHE_SIZE / 2 + world->cacheTranslationX,
															   j - CHUNKCACHE_SIZE / 2 + world->cacheTranslationZ);
				}
			}

			for (int i = 0; i < 3; i++) {
				while (chunkWorker->working || chunkWorker->queue->queue.size() > 0) {
					svcSleepThread(50000000);  // 1 Tick
				}
				world->tick();
			}

			if (newWorld) {
				int highestBlock = 0;
				for (int x = -1; x < 1; x++) {
					for (int z = -1; z < 1; z++) {
						int height = world->getHeight(x, z);
						if (height > highestBlock)
							highestBlock = height;
					}
				}
				player->position.y = (float)highestBlock + 0.2f;
			}
		}
	}
	Gui_InputData(inputData);
}
void Minecraft::releaseWorld() {
	for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
		for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
			world->unloadChunk(i, j);
		}
	}
	chunkWorker->finish();
	world->reset();
	saveMgr->unload();
}
void Minecraft::stop() {
	running = false;
}
bool Minecraft::isRunning() {
	return running;
}
void Minecraft::setScreen(Screen* screen) {
	/*if (mScreen)
		mScreen->removed();

	// if (!screen)	 // if o screen and no level
	// screen = new TitleScreen();
	// show dead screen, og does here.

	mScreen = screen;
	if (mScreen) {
		mScreen->added();
		mScreen->initBase();
	}*/
}