#include "world/level/chunk/ChunkWorker.h"

#include <stdio.h>

#include "client/Exception.h"
#include "util/VecUtil.h"

ChunkWorker::ChunkWorker() {
	queue = new WorkQueue();

	if (R_FAILED(APT_SetAppCpuTimeLimit(30))) {
		Crash("Couldn't set AppCpuTimeLimit");
	}

	s32 priority;
	bool isNew3ds = false;
	APT_CheckNew3DS(&isNew3ds);
	svcGetThreadPriority(&priority, CUR_THREAD_HANDLE);

	thread = threadCreate(&mainLoop, (void*)this, CHUNKWORKER_THREAD_STACKSIZE, priority - 1, isNew3ds ? 2 : 1, false);

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

void mainLoop(void* todo_) {
	ChunkWorker* todo = (ChunkWorker*)todo_;
	std::vector<WorkerItem> privateQueue;
	while (workerToStop != todo || todo->queue->queue.size() > 0) {
		todo->working = false;

		LightEvent_Wait(&todo->queue->itemAddedEvent);
		LightEvent_Clear(&todo->queue->itemAddedEvent);

		todo->working = true;

		LightLock_Lock(&todo->queue->listInUse);
		Vec::push_array(privateQueue, todo->queue->queue.data(), todo->queue->queue.size());
		todo->queue->queue.clear();
		LightLock_Unlock(&todo->queue->listInUse);

		while (privateQueue.size() > 0) {
			WorkerItem item = privateQueue.back();
			int itemType	= (int)item.type;
			privateQueue.pop_back();

			if (item.uuid == item.chunk->uuid) {
				size_t sizeHandler = todo->handler[itemType].size();
				for (size_t i = 0; i < sizeHandler; i++) {
					if (todo->handler[itemType][i].active)
						todo->handler[itemType][i].workerPtr->chunkFunction(todo->queue, item);
					// call ChunkFunction
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