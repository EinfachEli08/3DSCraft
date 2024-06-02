#pragma once

#include <citro3d.h>

#include "world/level/ItemLike.h"
// #include "world/level/block/state/BlockBehavior.h"
// #include "world/level/block/state/StateContainer.h"

class BlockState;
class Block : /*public BlockBehavior, */ public ItemLike {
		// BlockState* defaultBlockState;
		const char* descriptionId;
		// Item

	protected:
		// StateContainer<Block*, BlockState*> mStateContainer;

	public:
		// Block(BlockBehavior::Properties properties) : BlockBehavior(properties) {}
		Block() {}
};
