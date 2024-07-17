#pragma once

#include "world/World.h"
#include "world/level/chunk/ChunkWorkerObjBase.h"

class WorkQueue;

class CustomGen : public ChunkWorkerObjBase {
	public:
		CustomGen(World* world) : world(world) {}
		void chunkFunction(WorkQueue* queue, WorkerItem item) override;

	private:
		World* world;
};
