#pragma once

#include <citro3d.h>

#include "world/level/ItemLike.h"
#include "world/level/block/state/BlockBehavior.h"
#include "world/level/block/state/StateDefinition.h"

class BlockState;
class Block : public BlockBehavior, public ItemLike {
		const char* descriptionId;
		// Item

	protected:
		StateDefinition<Block*, BlockState*> mStateDefinition;

	public:
		Block(BlockBehavior::Properties properties) : BlockBehavior
};
