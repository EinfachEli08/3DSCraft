#include "world/level/block/state/properties/BlockStateProperties.h"

const BooleanProperty BlockStateProperties::ATTACHED	 = BooleanProperty("attached");
const EnumProperty BlockStateProperties::HORIZONTAL_AXIS = EnumProperty("axis", Direction::Axis::X, Direction::Axis::Z);
const DirectionProperty BlockStateProperties::FACING =
	DirectionProperty("facing", Direction::NORTH, Direction::EAST, Direction::SOUTH, Direction::WEST, Direction::UP, Direction::DOWN);
const IntergerProperty BlockStateProperties::FLOWER_AMOUNT = IntergerProperty("flower_amount", 1, 4);