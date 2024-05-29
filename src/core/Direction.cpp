#include "core/Direction.h"

int DirectionToOffset[7][3]			  = {{-1, 0, 0}, {1, 0, 0}, {0, -1, 0}, {0, 1, 0}, {0, 0, -1}, {0, 0, 1}, {0, 0, 0}};
Direction::_ DirectionOpposite[7]	  = {Direction::_ast,  Direction::West,	 Direction::Up,		Direction::Down,
										 Direction::South, Direction::North, Direction::Invalid};
Direction::Axis::e DirectionToAxis[7] = {Direction::Axis::X, Direction::Axis::X, Direction::Axis::Y, Direction::Axis::Y,
										 Direction::Axis::Z, Direction::Axis::Z, Direction::Axis::X};