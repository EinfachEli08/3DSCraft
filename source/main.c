#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <3ds.h>
#include <citro3d.h>
#include <sino/sino.h>

#include "GameStates.h"
#include "client/Crash.h"
#include "client/gui/Gui.h"
#include "client/gui/screens/SelectWorldScreen.h"
#include "client/player/Damage.h"
#include "client/player/Player.h"
#include "client/player/PlayerController.h"
#include "client/renderer/PolyGen.h"
#include "client/renderer/Renderer.h"
#include "client/renderer/debug/DebugUI.h"
#include "util/math/NumberUtils.h"
#include "world/World.h"
#include "world/chunk/ChunkWorker.h"
#include "world/savegame/SaveManager.h"
#include "world/savegame/SuperChunk.h"
#include "world/worldgen/SmeaGen.h"
#include "world/worldgen/SuperFlatGen.h"

bool showDebugInfo = true;

void releaseWorld(ChunkWorker* chunkWorker, SaveManager* savemgr, World* world) {
	for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
		for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
			World_UnloadChunk(world, world->chunkCache[i][j]);
		}
	}
	ChunkWorker_Finish(chunkWorker);
	World_Reset(world);

	SaveManager_Unload(savemgr);
}

int main() {
	GameState gamestate = GameState_SelectWorld;
	// printf("gfxinit\n");
	gfxInitDefault();

	// Enable N3DS 804MHz operation, where available
	osSetSpeedupEnable(true);

	// consoleInit(GFX_TOP, NULL);
	gfxSet3D(true);
	// printf("romfsinit\n");
	romfsInit();

	SuperFlatGen flatGen;
	SmeaGen smeaGen;

	SuperChunk_InitPools();

	SaveManager_InitFileSystem();

	ChunkWorker chunkWorker;
	ChunkWorker_Init(&chunkWorker);
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_PolyGen, (WorkerFuncObj){&PolyGen_GeneratePolygons, NULL, true});
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_BaseGen, (WorkerFuncObj){&SuperFlatGen_Generate, &flatGen, true});
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_BaseGen, (WorkerFuncObj){&SmeaGen_Generate, &smeaGen, true});

	sino_init();

	World* world = (World*)malloc(sizeof(World));

	Sound BackgroundSound;
	Sound PlayerSound;
	Player player;
	PlayerController playerCtrl;
	Player_Init(&player, world);
	PlayerController_Init(&playerCtrl, &player);

	SuperFlatGen_Init(&flatGen, world);
	SmeaGen_Init(&smeaGen, world);

	Renderer_Init(world, &player, &chunkWorker.queue, &gamestate);

	DebugUI_Init();

	SelectWorldScreen_Init();

	World_Init(world, &chunkWorker.queue);

	SaveManager savemgr;
	SaveManager_Init(&savemgr, &player);
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_Load, (WorkerFuncObj){&SaveManager_LoadChunk, &savemgr, true});
	ChunkWorker_AddHandler(&chunkWorker, WorkerItemType_Save, (WorkerFuncObj){&SaveManager_SaveChunk, &savemgr, true});

	uint64_t lastTime = svcGetSystemTick();
	float dt = 0.f, timeAccum = 0.f, fpsClock = 0.f;
	int frameCounter = 0, fps = 0;
	bool initBackgroundSound = true;

	while (aptMainLoop()) {
		if (initBackgroundSound) {
			initBackgroundSound		   = false;
			BackgroundSound.background = true;
			char* soundfile			   = "romfs:/assets/sound/music/1.opus";
			BackgroundSound.path[0]	   = '\0';
			strncat(BackgroundSound.path, soundfile, sizeof(BackgroundSound.path) - 1);
			playopus(&BackgroundSound);
		}
		DebugUI_Text("v%s", APP_VERSION);
		// DebugUI_Text("%d FPS  Usage: CPU: %5.2f%% GPU: %5.2f%% Buf: %5.2f%% Lin: %d", fps, C3D_GetProcessingTime() * 6.f,
		// C3D_GetDrawingTime() * 6.f, C3D_GetCmdBufUsage() * 100.f, linearSpaceFree());
		// DebugUI_Text("X: %f, Y: %f, Z: %f", f3_unpack(player.position));
		// DebugUI_Text("HP: %i",player.hp);
		// DebugUI_Text("velocity: %f rndy: %f",player.velocity.y,player.rndy);
		// DebugUI_Text("Time: %i Cause: %c",dmg->time,dmg->cause);
		// DebugUI_Text("SX: %f SY: %f SZ: %f",player->spawnx,player->spawny,player->spawnz);
		// DebugUI_Text("Hunger: %i Hungertimer: %i",player.hunger,player.hungertimer);
		// DebugUI_Text("Gamemode: %i",player.gamemode);
		// DebugUI_Text("quickbar %i",player.quickSelectBarSlot);

		Renderer_Render();

		uint64_t currentTime = svcGetSystemTick();
		dt					 = ((float)(currentTime / (float)CPU_TICKS_PER_MSEC) - (float)(lastTime / (float)CPU_TICKS_PER_MSEC)) / 1000.f;
		lastTime			 = currentTime;
		timeAccum += dt;

		frameCounter++;
		fpsClock += dt;
		if (fpsClock >= 1.f) {
			fps			 = frameCounter;
			frameCounter = 0;
			fpsClock	 = 0.f;
		}

		hidScanInput();
		u32 keysheld = hidKeysHeld(), keysdown = hidKeysDown();
		if (keysdown & KEY_START) {
			if (gamestate == GameState_SelectWorld)
				break;
			else if (gamestate == GameState_Playing) {
				releaseWorld(&chunkWorker, &savemgr, world);

				gamestate = GameState_SelectWorld;

				SelectWorldScreen_ScanWorlds();

				lastTime = svcGetSystemTick();
			}
		}

		circlePosition circlePos;
		hidCircleRead(&circlePos);

		circlePosition cstickPos;
		hidCstickRead(&cstickPos);

		touchPosition touchPos;
		hidTouchRead(&touchPos);

		InputData inputData =
			(InputData){keysheld, keysdown, hidKeysUp(), circlePos.dx, circlePos.dy, touchPos.px, touchPos.py, cstickPos.dx, cstickPos.dy};

		if (gamestate == GameState_Playing) {
			while (timeAccum >= 1.f / 20.f) {
				World_Tick(world);

				timeAccum -= 1.f / 20.f;
			}

			PlayerController_Update(&playerCtrl, &PlayerSound, inputData, dt);

			World_UpdateChunkCache(world, WorldToChunkCoord(FastFloor(player.position.x)), WorldToChunkCoord(FastFloor(player.position.z)));
		} else if (gamestate == GameState_SelectWorld) {
			char path[256];
			char name[WORLD_NAME_SIZE] = {'\0'};
			WorldGenType worldType;
			bool newWorld = false;
			if (SelectWorldScreen_Update(path, name, &worldType, &newWorld)) {
				strcpy(world->name, name);
				world->genSettings.type = worldType;

				SaveManager_Load(&savemgr, path);

				ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, &flatGen, world->genSettings.type == WorldGen_SuperFlat);
				ChunkWorker_SetHandlerActive(&chunkWorker, WorkerItemType_BaseGen, &smeaGen, world->genSettings.type == WorldGen_Smea);

				world->cacheTranslationX = WorldToChunkCoord(FastFloor(player.position.x));
				world->cacheTranslationZ = WorldToChunkCoord(FastFloor(player.position.z));
				for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
					for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
						world->chunkCache[i][j] = World_LoadChunk(world, i - CHUNKCACHE_SIZE / 2 + world->cacheTranslationX,
																  j - CHUNKCACHE_SIZE / 2 + world->cacheTranslationZ);
					}
				}

				for (int i = 0; i < 3; i++) {
					while (chunkWorker.working || chunkWorker.queue.queue.length > 0) {
						svcSleepThread(50000000);  // 1 Tick
					}
					World_Tick(world);
				}

				if (newWorld) {
					int highestblock = 0;
					for (int x = -1; x < 1; x++) {
						for (int z = -1; z < 1; z++) {
							int height = World_GetHeight(world, x, z);
							if (height > highestblock)
								highestblock = height;
						}
					}
					player.hunger	  = 20;
					player.hp		  = 20;
					player.position.y = (float)highestblock + 0.2f;
				}
				gamestate = GameState_Playing;
				lastTime  = svcGetSystemTick();	 // fix timing
			}
		}
		Gui_InputData(inputData);
	}

	if (gamestate == GameState_Playing) {
		releaseWorld(&chunkWorker, &savemgr, world);
	}

	SaveManager_Deinit(&savemgr);

	SuperChunk_DeinitPools();

	free(world);

	if (BackgroundSound.threaid != NULL) {
		DoQuit(0);
		threadJoin(BackgroundSound.threaid, 50000);
		threadFree(BackgroundSound.threaid);
		if (BackgroundSound.opusFile) {
			op_free(BackgroundSound.opusFile);
		}
		audioExit(0);
	}
	if (PlayerSound.threaid != NULL) {
		DoQuit(1);
		threadJoin(PlayerSound.threaid, 50000);
		threadFree(PlayerSound.threaid);
		if (PlayerSound.opusFile) {
			op_free(PlayerSound.opusFile);
		}
		audioExit(1);
	}

	ndspExit();
	sino_exit();

	SelectWorldScreen_Deinit();

	DebugUI_Deinit();

	ChunkWorker_Deinit(&chunkWorker);

	Renderer_Deinit();

	romfsExit();

	gfxExit();
	return 0;
}
