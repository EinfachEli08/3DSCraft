#pragma once

#include "world/level/block/state/BlockBehavior.h"
#include <unordered_map>
#include <vector/vector.h>

class BlockState : public BlockBehavior::BlockStateBase {
	public:
		template <typename T>
		BlockState(Block* block, vector<Property<T>> properties) : BlockBehavior::BlockStateBase(block, properties) {}

		BlockState* asState() { return this; }
};
