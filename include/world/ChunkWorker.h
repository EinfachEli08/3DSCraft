#pragma once

#include <3ds.h>

#include <world/ChunkWorkerObjBase.h>
#include <world/WorkQueue.h>

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
		vec_t(WorkerFuncObj) * handler[Enum::WorkerItemTypeCount];
};
void mainLoop(void* todo);