#include "core/Direction.h"

int DirectionToOffset[7][3]		  = {{-1, 0, 0}, {1, 0, 0}, {0, -1, 0}, {0, 1, 0}, {0, 0, -1}, {0, 0, 1}, {0, 0, 0}};
Direction::_ DirectionOpposite[7] = {Direction::EAST,  Direction::WEST,	 Direction::UP,	 Direction::DOWN,
									 Direction::SOUTH, Direction::NORTH, Direction::NONE};
Axis::_ DirectionToAxis[7]		  = {Axis::X, Axis::X, Axis::Y, Axis::Y, Axis::Z, Axis::Z, Axis::X};