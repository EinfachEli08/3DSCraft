#pragma once

#include "world/WorkQueue.h"

class ChunkWorkerObjBase {
	public:
		virtual void chunkFunction(WorkQueue* queue, WorkerItem item) = 0;
};
