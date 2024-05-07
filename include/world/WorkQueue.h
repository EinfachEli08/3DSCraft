#pragma once

#include <3ds.h>
#include <stdbool.h>
#include <vec/vec.h>

#include <misc/Xorshift.h>
#include <world/Chunk.h>

enum WorkerItemType {
	Load,
	Save,
	BaseGen,
	Decorate,
	PolyGen,
	Count
};

struct WorkerItem{
	WorkerItemType type;
	Chunk* chunk;
	uint32_t uuid;
};

class WorkQueue {
public:
	WorkQueue();
	~WorkQueue();

	void addItem(WorkerItem item);

	vec_t(WorkerItem) queue;
	LightEvent itemAddedEvent;
	LightLock listInUse;

private:
};

