#include <world/ChunkWorker.h>

#include <misc/Crash.h>

#include <stdio.h>

ChunkWorker::ChunkWorker() {
	queue = new WorkQueue();

	if (R_FAILED(APT_SetAppCpuTimeLimit(30))) {
		Crash("Couldn't set AppCpuTimeLimit");
	}

	for (int i = 0; i < (int) WorkerItemType::Count; i++) vec_init(handler[i]);

	s32 priority;
	bool isNew3ds = false;
	APT_CheckNew3DS(&isNew3ds);
	svcGetThreadPriority(&priority, CUR_THREAD_HANDLE);

	*thread = threadCreate(&mainLoop, (void*)this, CHUNKWORKER_THREAD_STACKSIZE, priority - 1, isNew3ds ? 2 : 1, false);
	if (!*thread) {
		Crash("Couldn't create worker thread");
	}

	working = false;
}

static volatile ChunkWorker* workerToStop = NULL;
ChunkWorker::~ChunkWorker() {
	workerToStop = this;
	LightEvent_Signal(&queue->itemAddedEvent);
	threadJoin(*thread, UINT64_MAX);

	threadFree(*thread);
	delete queue;

	for (int i = 0; i < (int) WorkerItemType::Count; i++) {
		vec_deinit(handler[i]);
	}
}

void ChunkWorker::finish() {
	LightEvent_Signal(&queue->itemAddedEvent);
	while (working || queue->queue.length > 0) svcSleepThread(1000000);
}

void ChunkWorker::addHandler(WorkerItemType workerType, ChunkWorkerObjBase* obj) {
	WorkerFuncObj newHandler; newHandler.workerPtr = obj, newHandler.active = true;
	vec_push(handler[(int) workerType], newHandler);
}

void ChunkWorker::setHandlerActive(WorkerItemType workerType, ChunkWorkerObjBase* worker, bool active) {
	int typeIndex = (int) workerType;
	for (size_t i = 0; i < handler[typeIndex]->length; i++) {
		if (handler[typeIndex]->data[i].workerPtr == worker) {
			handler[typeIndex]->data[i].active = active;
			return;
		}
	}
}

void mainLoop(void* todo_) {
	ChunkWorker* todo = (ChunkWorker*) todo_;
	vec_t(WorkerItem) privateQueue;
	vec_init(&privateQueue);
	while (workerToStop != todo || todo->queue->queue.length > 0) {
		todo->working = false;

		LightEvent_Wait(&todo->queue->itemAddedEvent);
		LightEvent_Clear(&todo->queue->itemAddedEvent);

		todo->working = true;

		LightLock_Lock(&todo->queue->listInUse);
		vec_pusharr(&privateQueue, todo->queue->queue.data, todo->queue->queue.length);
		vec_clear(&todo->queue->queue);
		LightLock_Unlock(&todo->queue->listInUse);

		while (privateQueue.length > 0) {
			WorkerItem item = vec_pop(&privateQueue);
			int itemType = (int) item.type;

			if (item.uuid == item.chunk->uuid) {
				for (int i = 0; i < todo->handler[itemType]->length; i++) {
					if (todo->handler[itemType]->data[i].active)
						todo->handler[itemType]->data[i].workerPtr->chunkFunction(todo->queue, item);
						//call ChunkFunction
					svcSleepThread(7000);
				}

				switch (item.type) {
					case WorkerItemType::BaseGen:
						item.chunk->genProgress = ChunkGen_Terrain;
						break;
					case WorkerItemType::Decorate:
						item.chunk->genProgress = ChunkGen_Finished;
						break;
					default:
						break;
				}

				--item.chunk->tasksRunning;
				if (item.type == WorkerItemType::PolyGen) --item.chunk->graphicalTasksRunning;

				svcSleepThread(1000);
			}
		}
	}
	vec_deinit(&privateQueue);
}