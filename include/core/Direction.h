#pragma once

#include "util/math/Quaternion.h"
#include "util/math/Vector3.h"
#include <3ds/types.h>
#include <array>

class Direction {
	public:
		struct Axis {
				enum _ : u8 {
					X,
					Y,
					Z
				};
		};

		bool operator==(const Direction& other) const { return mIdx == other.mIdx; }

		Direction byIndex(u8 index);
		Direction byHorizontalIndex(u8 hIndex);
		std::array<Direction, 6> compose(Direction first, Direction second, Direction third);

		Quaternion getRotation();
		u8 getIndex() { return mIdx; }
		u8 getHorizontalIndex() { return mHorizontalIdx; }
		bool getIsPositive() { return isPositive; }
		Direction getOpposize() { return byIndex(mOpposite); }
		Vector3<int> getOffset() { return mOffset; }
		Axis::_ getAxis() { return mAxis; }

		float getHorizontalAngle();

		Vector3<float> toVector3f();
		Direction rotateY();
		Direction rotateYCCW();

	private:
		s8 mIdx;
		s8 mOpposite;
		s8 mHorizontalIdx;
		Axis::_ mAxis;
		bool isPositive;
		Vector3<int> mOffset;

		Direction(s8 index, s8 oppositeIdx, s8 horizontalIdx, bool positive, Axis::_ axis, Vector3<int> offset)
			: mIdx(index), mOpposite(oppositeIdx), mHorizontalIdx(horizontalIdx), mAxis(axis), isPositive(positive), mOffset(offset) {}

	public:
		static const Direction DOWN;
		static const Direction UP;
		static const Direction NORTH;
		static const Direction SOUTH;
		static const Direction WEST;
		static const Direction EAST;
		static const Direction INVALID;
};	// namespace Direction