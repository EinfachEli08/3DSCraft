#pragma once

namespace Direction {
enum e {
	Down,
	Up,
	North,
	South,
	West,
	East,
	Invalid
};
}  // namespace Direction

namespace Axis {
enum e {
	X,
	Y,
	Z
};
}  // namespace Axis

extern int DirectionToOffset[7][3];
extern Direction::e DirectionOpposite[7];
extern Axis::e DirectionToAxis[7];