#pragma once

#include "core/Direction.h"
#include "resources/ResourceLocation.h"
#include "world/level/block/state/StateHolder.h"
#include "world/level/material/MapColor.h"
#include "world/level/material/PushReaction.h"

class Block;
class SoundType;
class BlockBehavior {
	public:
		static class BlockStateBase : StateHolder<Block*, BlockState*> {
				int mLightEmission;
				bool useShapeForLightOcclusion;
				bool isAir;
				bool ignitedByLava;
				bool liquid;
				bool legacySolid;
				PushReaction::_ mPushReaction;
				MapColor::_ mMapColor;
				float mDestroySpeed;
				bool requiredCorrectToolForDrops;
				bool canOcclude;
		};

		static class Properties {};

		template <typename A>
		class StateArgumentPredicate {};

		class StatePrediate {};

	protected:
		static constexpr Direction::_ cUpdateShapeOrder[] = {Direction::West, Direction::East, Direction::North, Direction::South};

		bool hasCollision;
		bool isRandomlyTicking;
		float mExplosionResistance;
		float mFriction;
		float mSpeedFactor;
		float mJumpFactor;
		SoundType* mSoundType;
		Properties* mProperties;
		ResourceLocation drops;
};