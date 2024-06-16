#pragma once

namespace Direction {
enum _ {
	DOWN,
	UP,
	NORTH,
	SOUTH,
	WEST,
	EAST,
	NONE
};
}  // namespace Direction

namespace Axis {
enum _ {
	X,
	Y,
	Z
};
}  // namespace Axis

extern int DirectionToOffset[7][3];
extern Direction::_ DirectionOpposite[7];
extern Axis::_ DirectionToAxis[7];