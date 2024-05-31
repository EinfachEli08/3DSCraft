#include "core/Direction.h"

const Direction Direction::DOWN	   = Direction(0, 1, -1, false, Direction::Axis::Y, Vector3<int>(0, -1, 0));
const Direction Direction::UP	   = Direction(1, 0, -1, true, Direction::Axis::Y, Vector3<int>(0, 1, 0));
const Direction Direction::NORTH   = Direction(2, 3, 2, false, Direction::Axis::Y, Vector3<int>(0, 0, -1));
const Direction Direction::SOUTH   = Direction(3, 2, 0, true, Direction::Axis::Y, Vector3<int>(0, 0, 1));
const Direction Direction::WEST	   = Direction(4, 5, 1, false, Direction::Axis::Y, Vector3<int>(-1, 0, 0));
const Direction Direction::EAST	   = Direction(5, 4, 3, true, Direction::Axis::Y, Vector3<int>(-1, 0, 0));
const Direction Direction::INVALID = Direction(-1, -1, -1, true, Direction::Axis::Y, Vector3<int>(0, 0, 0));