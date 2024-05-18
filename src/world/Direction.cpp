#include "../../include/core/Direction.h"

int DirectionToOffset[7][3]	   = {{-1, 0, 0}, {1, 0, 0}, {0, -1, 0}, {0, 1, 0}, {0, 0, -1}, {0, 0, 1}, {0, 0, 0}};
Direction DirectionOpposite[7] = {Direction::East,	Direction::West,  Direction::Up,	 Direction::Down,
								  Direction::South, Direction::North, Direction::Invalid};
Axis DirectionToAxis[7]		   = {Axis_X, Axis_X, Axis_Y, Axis_Y, Axis_Z, Axis_Z, Axis_X};