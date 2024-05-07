#pragma once

#include <3ds.h>

#include <world/ChunkWorkerObjBase.h>
#include <world/WorkQueue.h>

#define CHUNKWORKER_THREAD_STACKSIZE (16 * 1024)

class WorkerFuncObjBase;

struct WorkerFuncObj {
	ChunkWorkerObjBase* workerPtr;
	bool active;
};

class ChunkWorker {
       public:
		ChunkWorker();
		~ChunkWorker();

		void finish();
		void addHandler(WorkerItemType type, ChunkWorkerObjBase* worker);
		void setHandlerActive(WorkerItemType type, ChunkWorkerObjBase* worker, bool active);

		WorkQueue* queue;
		volatile bool working;
		Thread* thread;
		vec_t(WorkerFuncObj)* handler[(int)WorkerItemType::Count];

};
void mainLoop(void* todo);