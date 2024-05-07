#include <world/ChunkWorker.h>

#include <misc/Crash.h>

#include <stdio.h>

ChunkWorker::ChunkWorker() {
	WorkQueue_Init(queue);

	if (R_FAILED(APT_SetAppCpuTimeLimit(30))) {
		Crash("Couldn't set AppCpuTimeLimit");
	}

	for (int i = 0; i < WorkerItemType::WorkerItemTypes_Count; i++) vec_init(handler[i]);

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
	WorkQueue_Deinit(queue);

	for (int i = 0; i < WorkerItemTypes_Count; i++) {
		vec_deinit(handler[i]);
	}
}

void ChunkWorker::finish() {
	LightEvent_Signal(&queue->itemAddedEvent);
	while (working || queue->queue.length > 0) svcSleepThread(1000000);
}

void ChunkWorker::addHandler(int type, ChunkWorkerObjBase* obj) {
	WorkerFuncObj newHandler; newHandler.workerPtr = obj, newHandler.active = true;
	vec_push(handler[type], newHandler);
}

void ChunkWorker::setHandlerActive(int type, ChunkWorkerObjBase* worker, bool active) {
	for (size_t i = 0; i < handler[type]->length; i++) {
		if (handler[type]->data[i].workerPtr == worker) {
			handler[type]->data[i].active = active;
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

			if (item.uuid == item.chunk->uuid) {
				for (int i = 0; i < todo->handler[item.type]->length; i++) {
					if (todo->handler[item.type]->data[i].active)
						todo->handler[item.type]->data[i].workerPtr->chunkFunction(todo->queue, item);
						//call ChunkFunction
					svcSleepThread(7000);
				}

				switch (item.type) {
					case WorkerItemType_BaseGen:
						item.chunk->genProgress = ChunkGen_Terrain;
						break;
					case WorkerItemType_Decorate:
						item.chunk->genProgress = ChunkGen_Finished;
						break;
					default:
						break;
				}

				--item.chunk->tasksRunning;
				if (item.type == WorkerItemType_PolyGen) --item.chunk->graphicalTasksRunning;

				svcSleepThread(1000);
			}
		}
	}
	vec_deinit(&privateQueue);
}