#pragma once

#include <vec/vec.h>

#include <world/Chunk.h>

#include <misc/Xorshift.h>

#include <stdbool.h>

#include <3ds.h>

enum class WorkerItemType{
	WorkerItemType_Load,
	WorkerItemType_Save,
	WorkerItemType_BaseGen,
	WorkerItemType_Decorate,
	WorkerItemType_PolyGen,
	WorkerItemTypes_Count
} ;

struct WorkerItem{
	WorkerItemType type;
	Chunk* chunk;
	uint32_t uuid;
} ;

class WorkQueue {
public:
	WorkQueue() {
		vec_init(&queue);
		LightLock_Init(&listInUse);
		LightEvent_Init(&itemAddedEvent, RESET_STICKY);
	}

	~WorkQueue() {
		vec_deinit(&queue);
	}

	void AddItem(WorkerItem item) {
		item.uuid = item.chunk->uuid;
		++item.chunk->tasksRunning;
		if (item.type == WorkerItemType::PolyGen) ++item.chunk->graphicalTasksRunning;
		LightLock_Lock(&listInUse);
		vec_push(&queue, item);
		LightLock_Unlock(&listInUse);

		LightEvent_Signal(&itemAddedEvent);
	}

private:
	vec_t(WorkerItem) queue;
	LightEvent itemAddedEvent;
	LightLock listInUse;
};

