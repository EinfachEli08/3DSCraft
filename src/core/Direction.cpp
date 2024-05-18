#include "core/Direction.h"

int DirectionToOffset[7][3]		  = {{-1, 0, 0}, {1, 0, 0}, {0, -1, 0}, {0, 1, 0}, {0, 0, -1}, {0, 0, 1}, {0, 0, 0}};
Direction::e DirectionOpposite[7] = {Direction::East,  Direction::West,	 Direction::Up,		Direction::Down,
									 Direction::South, Direction::North, Direction::Invalid};
Axis::e DirectionToAxis[7]		  = {Axis::X, Axis::X, Axis::Y, Axis::Y, Axis::Z, Axis::Z, Axis::X};