#pragma once

#include <3ds.h>
#include <vector>

#include "world/WorkQueue.h"
#include "world/level/chunk/ChunkWorkerObjBase.h"

#define CHUNKWORKER_THREAD_STACKSIZE (16 * 1024)

class ChunkWorker {
	public:
		ChunkWorker();
		~ChunkWorker();

		void finish();
		void addHandler(Enum::WorkerItemType type, ChunkWorkerObjBase* worker);
		void setHandlerActive(Enum::WorkerItemType type, ChunkWorkerObjBase* worker, bool active);

		struct WorkerFuncObj {
				ChunkWorkerObjBase* workerPtr;
				bool active;
		};

		WorkQueue* queue;
		volatile bool working;
		Thread* thread;
		std::vector<WorkerFuncObj>* handler[Enum::WorkerItemTypeCount];
};
void mainLoop(void* todo);