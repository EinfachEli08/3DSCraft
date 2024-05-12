#pragma once

#include <stdio.h>
#include <vec/vec.h>

#include "client/player/Player.h"
#include "world/level/chunk/ChunkWorkerObjBase.h"
#include "world/level/saveddata/SuperChunk.h"

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
};