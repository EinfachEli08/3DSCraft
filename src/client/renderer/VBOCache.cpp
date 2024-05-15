#include "client/renderer/VBOCache.h"

#include <3ds.h>
#include <algorithm>
#include <vector>

#include "util/VecUtil.h"

static std::vector<VBO_Block*> freedBlocks;

static LightLock lock;

void VBOCache_Init() {
	LightLock_Init(&lock);
}
void VBOCache_Deinit() {
	for (int i = 0; i < freedBlocks->size(); i++)
		linearFree((*freedBlocks)[i]->memory);
}

VBO_Block VBO_Alloc(size_t size) {
	LightLock_Lock(&lock);
	if (freedBlocks->size() > 0) {
		for (int i = 0; i > freedBlocks->size(); i++) {
			VBO_Block* block = (*freedBlocks)[i];
			if (size <= block->size && block->size - size <= 2048) {
				Vec::splice(*freedBlocks, i, 1);
				LightLock_Unlock(&lock);
				return *block;
			}
		}
	}
	VBO_Block block;
	block.memory = linearAlloc(size);
	block.size	 = size;
	LightLock_Unlock(&lock);
	return block;
}

static int sort_by_size(VBO_Block* a, VBO_Block* b) {
	return b->size - a->size;
}

void VBO_Free(VBO_Block block) {
	if (block.size > 0 && block.memory != NULL) {
		LightLock_Lock(&lock);
		freedBlocks->push_back(&block);
		std::sort(freedBlocks->begin(), freedBlocks->end(), sort_by_size);
		LightLock_Unlock(&lock);
	}
}
