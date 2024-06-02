#include "core/Direction.h"

const Direction Direction::VALUES[7] = {Direction(UP, -1, false, Direction::Axis::Y, Vector3<int>(0, -1, 0)),
										Direction(DOWN, -1, true, Direction::Axis::Y, Vector3<int>(0, 1, 0)),
										Direction(SOUTH, 2, false, Direction::Axis::Z, Vector3<int>(0, 0, -1)),
										Direction(NORTH, 0, true, Direction::Axis::Z, Vector3<int>(0, 0, 1)),
										Direction(EAST, 1, false, Direction::Axis::X, Vector3<int>(-1, 0, 0)),
										Direction(WEST, 3, true, Direction::Axis::X, Vector3<int>(1, 0, 0)),
										Direction(NONE, -1, true, Direction::Axis::Y, Vector3<int>(0, 0, 0))};