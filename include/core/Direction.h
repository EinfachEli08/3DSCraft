#pragma once

#include <3ds/types.h>

#include "util/math/Vector3.h"

namespace Direction {
	enum _ : u8 {
		DOWN,
		UP,
		NORTH,
		SOUTH,
		WEST,
		EAST,
		NONE,
		COUNT
	};

	constexpr Vector3<s8> DirectionToOffset[COUNT] = {
		{  0, -1,  0 }, // down
		{  0,  1,  0 }, // up
		{  0,  0, -1 }, // north
		{  0,  0,  1 }, // south
		{ -1,  0,  0 }, // east
		{  1,  0,  0 }, // west
		{  0,  0,  0 }  // none
	};

	constexpr _ all[COUNT] = { DOWN, UP, NORTH, SOUTH, WEST, EAST, NONE };

	constexpr _ opposite[COUNT] = { UP, DOWN, SOUTH, NORTH, EAST, WEST, NONE };

	constexpr Axis::_ byAxis[COUNT] = { Axis::Y, Axis::Y, Axis::Z, Axis::Z, Axis::X, Axis::X, Axis::X };

	constexpr const Vector3<s8> getOffset(_ dir) {
		return DirectionToOffset[dir];
	}

	constexpr _ getOpposite(_ dir) {
		return opposite[dir];
	}

	constexpr Axis::_ getAxis(_ dir) {
		return byAxis[dir];
	}
}  // namespace Direction

namespace Axis {
	enum _ : u8 {
		X,
		Y,
		Z,
		NONE
	};

	constexpr Direction::_ primaryDirection(_ dir) {
		switch (dir) {
			case X:
				return Direction::EAST;
			case Y:
				return Direction::UP;
			case Z:
				return Direction::SOUTH;
			default:
				return Direction::NONE;
		}
	}
}  // namespace Axis
