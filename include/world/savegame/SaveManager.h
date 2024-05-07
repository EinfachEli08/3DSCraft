#pragma once

#include <stdio.h>
#include <vec/vec.h>

#include <entity/Player.h>
#include <world/ChunkWorkerObjBase.h>
#include <world/savegame/SuperChunk.h>

class SaveManager {
       public:
	Player* player;
	World* world;
	vec_t(SuperChunk*) superChunks;

	SaveManager(Player* player);
	~SaveManager();

	static void initFileSystem();

	void load(const char* path);
	void unload();

	class LoadChunk : public ChunkWorkerObjBase {
	       public:
		LoadChunk(SaveManager* parent) : parent(parent) {};

		void chunkFunction (WorkQueue* queue, WorkerItem item) override;

	       private:
		SaveManager* parent;
	};
	class SaveChunk : public ChunkWorkerObjBase {
	       public:
		SaveChunk(SaveManager* parent): parent(parent) {};

		void chunkFunction (WorkQueue* queue, WorkerItem item) override;

	       private:
		SaveManager* parent;
	};
};