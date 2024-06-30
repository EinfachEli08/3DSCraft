#include "world/level/chunk/ChunkWorker.h"

#include <stdio.h>

#include "Project.h"
#include "client/Exception.h"
#include "vector/vector.h"

ChunkWorker::ChunkWorker() {
	queue = new WorkQueue();

	if (R_FAILED(APT_SetAppCpuTimeLimit(30))) {
		Crash("Couldn't set AppCpuTimeLimit");
	}

	s32 priority;
	svcGetThreadPriority(&priority, CUR_THREAD_HANDLE);

	thread = threadCreate(&mainLoop, (void*)this, CHUNKWORKER_THREAD_STACKSIZE, priority - 1, gIsNew3ds ? 2 : 1, false);

	if (thread == 0) {
		Crash("Couldn't create worker thread");
	}

	working = false;
}

static volatile ChunkWorker* workerToStop = NULL;
ChunkWorker::~ChunkWorker() {
	workerToStop = this;
	LightEvent_Signal(&queue->itemAddedEvent);
	threadJoin(thread, UINT64_MAX);

	threadFree(thread);
	delete queue;
}

void ChunkWorker::finish() {
	LightEvent_Signal(&queue->itemAddedEvent);
	while (working || queue->queue.size() > 0)
		svcSleepThread(1000000);
}

void ChunkWorker::addHandler(Enum::WorkerItemType workerType, ChunkWorkerObjBase* obj) {
	WorkerFuncObj newHandler;
	newHandler.workerPtr = obj, newHandler.active = true;
	handler[(int)workerType].push_back(newHandler);
}

void ChunkWorker::setHandlerActive(Enum::WorkerItemType workerType, ChunkWorkerObjBase* worker, bool active) {
	int typeIndex	   = (int)workerType;
	size_t sizeHandler = handler[typeIndex].size();
	for (size_t i = 0; i < sizeHandler; i++) {
		if (handler[typeIndex][i].workerPtr == worker) {
			handler[typeIndex][i].active = active;
			return;
		}
	}
}

void mainLoop(void* workerIn) {
	ChunkWorker* worker = (ChunkWorker*)workerIn;
	vector<WorkerItem> privateQueue;
	while (workerToStop != worker || worker->queue->queue.size() > 0) {
		worker->working = false;

		LightEvent_Wait(&worker->queue->itemAddedEvent);
		LightEvent_Clear(&worker->queue->itemAddedEvent);

		worker->working = true;

		LightLock_Lock(&worker->queue->listInUse);
		privateQueue.push_array(worker->queue->queue.data(), worker->queue->queue.size());
		worker->queue->queue.clear();
		LightLock_Unlock(&worker->queue->listInUse);

		while (privateQueue.size() > 0) {
			WorkerItem item = privateQueue.back();
			auto& workObj	= worker->handler[item.type];
			privateQueue.pop_back();

			if (item.uuid == item.chunk->uuid) {
				size_t sizeHandler = workObj.size();
				for (size_t i = 0; i < sizeHandler; i++) {
					if (workObj[i].active)
						workObj[i].workerPtr->chunkFunction(worker->queue, item);
					svcSleepThread(7000);
				}

				switch (item.type) {
					case Enum::WorkerItemType::BaseGen:
						item.chunk->genProgress = ChunkGen_Terrain;
						break;
					case Enum::WorkerItemType::Decorate:
						item.chunk->genProgress = ChunkGen_Finished;
						break;
					default:
						break;
				}

				--item.chunk->tasksRunning;
				if (item.type == Enum::WorkerItemType::PolyGen)
					--item.chunk->graphicalTasksRunning;

				svcSleepThread(1000);
			}
		}
	}
}