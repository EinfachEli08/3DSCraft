#pragma once

#include "world/ChunkWorkerObjBase.h"
#include "world/World.h"

class WorkQueue;

class CustomGen : public ChunkWorkerObjBase {
	public:
		CustomGen(World* world) : world(world) {}
		void chunkFunction(WorkQueue* queue, WorkerItem item) override;

	private:
		World* world;
};
