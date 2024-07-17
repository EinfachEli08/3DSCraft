#pragma once

#include "core/BlockPos.h"
#include "core/Direction.h"
#include "world/phys/HitResult.h"

class BlockHitResult : HitResult {
		const Direction::_ mDir;
		const BlockPos* mBlockPos;
		const bool miss;
		const bool inside;

		BlockHitResult(const bool miss, const Vec3 location, const Direction::_ dir, const BlockPos* blockPos, const bool inside)
			: HitResult(location), miss(miss), mDir(dir), mBlockPos(blockPos), inside(inside) {}

	public:
		static BlockHitResult* miss(Vec3 location, Direction::_ dir, BlockPos* blockPos) {
			return new BlockHitResult(true, location, dir, blockPos, false);
		}
		BlockHitResult* withDirection(const Direction::_ dir) { return new BlockHitResult(miss, mLocation, dir, mBlockPos, inside); }
		BlockHitResult* withPosition(const BlockPos* blockPos) { return new BlockHitResult(miss, mLocation, mDir, blockPos, inside); }
		const BlockPos* getBlockPos() const { return mBlockPos; }
		const Direction::_ getDirection() const { return mDir; }
		HitResult::Type getType() { return miss ? HitResult::MISS : HitResult::BLOCK; }
		const bool isInside() const { return inside; }
};
