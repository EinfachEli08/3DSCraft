#pragma once

#include "core/Direction.h"

class BlockBehavior {
	protected:
		static constexpr Direction::_ cUpdateShapeOrder[] = {Direction::West, Direction::East, Direction::North, Direction::South};

		bool hasCollision;
		float explosionResistance;
		bool isRandomlyTicking;
		// SoundType
		float friction;
		float speedFactor;
		float jumpFactor;
		bool dynamicShape;
		// whatever i started
};