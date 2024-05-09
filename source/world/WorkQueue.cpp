#include <world/WorkQueue.h>

WorkQueue::WorkQueue() {
	vec_init(&queue);
	LightLock_Init(&listInUse);
	LightEvent_Init(&itemAddedEvent, RESET_STICKY);
}

WorkQueue::~WorkQueue() { vec_deinit(&queue); }

void WorkQueue::addItem(WorkerItem item) {
	item.uuid = item.chunk->uuid;
	++item.chunk->tasksRunning;
	if (item.type == Enum::WorkerItemType::PolyGen) ++item.chunk->graphicalTasksRunning;
	LightLock_Lock(&listInUse);
	vec_push(&queue, item);
	LightLock_Unlock(&listInUse);

	LightEvent_Signal(&itemAddedEvent);
}