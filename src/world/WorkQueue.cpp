#include "world/WorkQueue.h"

WorkQueue::WorkQueue() {
	LightLock_Init(&listInUse);
	LightEvent_Init(&itemAddedEvent, RESET_STICKY);
}

WorkQueue::~WorkQueue() {
}

void WorkQueue::addItem(WorkerItem item) {
	item.uuid = item.chunk->uuid;
	++item.chunk->tasksRunning;
	if (item.type == Enum::WorkerItemType::PolyGen)
		++item.chunk->graphicalTasksRunning;
	LightLock_Lock(&listInUse);
	queue->push_back(item);
	LightLock_Unlock(&listInUse);

	LightEvent_Signal(&itemAddedEvent);
}