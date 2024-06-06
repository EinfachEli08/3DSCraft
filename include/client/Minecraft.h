#pragma once

#include "Project.h"
#include "client/Exception.h"

#include "world/level/saveddata/SaveManager.h"

class ChunkWorker;
class World;
class Player;
class PlayerController;
class PolyGen;
class SuperFlatGen;
class NormalGen;
class CustomGen;
class Renderer;
class Screen;

class Minecraft {
		bool running = true;
		GameState gamestate;  // todo remove
		ChunkWorker* chunkWorker;
		World* world;
		Player* player;
		PlayerController* playerCtrl;
		PolyGen* polyGen;
		SuperFlatGen* flatGen;
		NormalGen* normalGen;
		CustomGen* customGen;
		Renderer* renderer;
		SaveManager* saveMgr;
		SaveManager::LoadChunk* loadChunk;
		SaveManager::SaveChunk* saveChunk;
		Screen* mScreen;

	public:
		Minecraft();
		~Minecraft();

		void tick(float dt, float timeFull, float fps);
		void stop();
		bool isRunning();
		void setScreen(Screen* screen);

	private:
		void releaseWorld();
};

static Minecraft* sMinecraft;