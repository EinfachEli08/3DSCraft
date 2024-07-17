#pragma once

#include "world/level/LevelHeightAccessor.h"
#include "world/level/block/state/BlockState.h"
#include "world/phys/BlockHitResult.h"

class BlockGetter : LevelHeightAccessor {
		// BlockEntity
		virtual BlockState* getBlockState(BlockPos* blockPos) = 0;
		// FluidState

		// virtual int getLightEmission(BlockPos* blockPos) { return getBlockState(blockPos)->getLightEmission(); }
		virtual int getMaxLightLevel() { return 15; }
};
