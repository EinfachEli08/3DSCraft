#pragma once

#include "world/World.h"
#include "world/level/chunk/ChunkWorkerObjBase.h"

class WorkQueue;

class SuperFlatGen : public ChunkWorkerObjBase {
	public:
		SuperFlatGen(World* world) : world(world) {}
		void chunkFunction(WorkQueue* queue, WorkerItem item) override;

	private:
		World* world;
};
