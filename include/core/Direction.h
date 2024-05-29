#pragma once

namespace Direction {
enum _ {
	Down,
	Up,
	North,
	South,
	West,
	East,
	Invalid
};
namespace Axis {
	enum _ {
		X,
		Y,
		Z
	};
}  // namespace Axis
}  // namespace Direction

extern int DirectionToOffset[7][3];
extern Direction::_ DirectionOpposite[7];
extern Direction::Axis::_ DirectionToAxis[7];