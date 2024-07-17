#pragma once

#include "world/World.h"
#include "world/level/chunk/ChunkWorkerObjBase.h"

class WorkQueue;

class NormalGen : public ChunkWorkerObjBase {
	public:
		NormalGen(World* world) : world(world) {}
		void chunkFunction(WorkQueue* queue, WorkerItem item) override;

	private:
		World* world;
};
