#pragma once

#include "util/math/Quaternion.h"
#include "util/math/Vector3.h"
#include <3ds/types.h>
#include <array>

class Direction {
		static const Direction VALUES[7];

	public:
		struct Axis {
				enum _ : u8 {
					X,
					Y,
					Z
				};
		};
		enum _ : u8 {
			DOWN,
			UP,
			NORTH,
			SOUTH,
			WEST,
			EAST,
			NONE
		};

		static Direction byIndex(u8 index) { return VALUES[index]; }
		Direction byHorizontalIndex(u8 hIndex);
		std::array<Direction, 6> compose(Direction first, Direction second, Direction third);

		Quaternion getRotation();
		u8 getHorizontalIndex() { return mHorizontalIdx; }
		bool getIsPositive() { return isPositive; }
		Direction getOpposite() { return byIndex(mOpposite); }
		_ getOppositeIdx() { return mOpposite; }
		Vector3<int> getOffset() { return mOffset; }
		Axis::_ getAxis() { return mAxis; }

		float getHorizontalAngle();

		Vector3<float> toVector3f();
		Direction rotateY();
		Direction rotateYCCW();

	private:
		_ mOpposite;
		s8 mHorizontalIdx;
		Axis::_ mAxis;
		bool isPositive;
		Vector3<int> mOffset;

		Direction(_ oppositeIdx, s8 horizontalIdx, bool positive, Axis::_ axis, Vector3<int> offset)
			: mOpposite(oppositeIdx), mHorizontalIdx(horizontalIdx), mAxis(axis), isPositive(positive), mOffset(offset) {}

};	// namespace Direction