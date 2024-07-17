#pragma once

#include <3ds.h>
#include <stdbool.h>
#include <vector>

#include "util/math/Xorshift.h"
#include "world/level/chunk/Chunk.h"

namespace Enum {
enum WorkerItemType {
	Load,
	Save,
	BaseGen,
	Decorate,
	PolyGen
};
const short WorkerItemTypeCount = 5;
}  // namespace Enum

struct WorkerItem {
		Enum::WorkerItemType type;
		Chunk* chunk;
		uint32_t uuid;
};

class WorkQueue {
	public:
		WorkQueue();
		~WorkQueue();

		void addItem(WorkerItem item);

		std::vector<WorkerItem> queue;
		LightEvent itemAddedEvent;
		LightLock listInUse;

	private:
};
