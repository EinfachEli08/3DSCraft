#pragma once

#include <stdio.h>

#include "client/player/Player.h"
#include "world/level/chunk/ChunkWorkerObjBase.h"

class SuperChunk;
class SaveManager {
	public:
		SaveManager(Player* player);
		~SaveManager();

		static void initFileSystem();

		void load(const char* path);
		void unload();

		class LoadChunk : public ChunkWorkerObjBase {
			public:
				LoadChunk(SaveManager* parent) : parent(parent){};

				void chunkFunction(WorkQueue* queue, WorkerItem item) override;

			private:
				SaveManager* parent;
		};
		class SaveChunk : public ChunkWorkerObjBase {
			public:
				SaveChunk(SaveManager* parent) : parent(parent){};

				void chunkFunction(WorkQueue* queue, WorkerItem item) override;

			private:
				SaveManager* parent;
		};

		std::vector<SuperChunk*> superChunks;
		Player* player;
		World* world;  // extern c would not work if private
};