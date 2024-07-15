#pragma once

#include "BooleanProperty.h"
#include "DirectionProperty.h"
#include "EnumProperty.h"
#include "IntergerProperty.h"

struct BlockStateProperties {
		static const BooleanProperty ATTACHED;
		static const BooleanProperty BOTTOM;
		static const BooleanProperty CONDITIONAL;
		static const BooleanProperty DRAG;
		static const BooleanProperty ENABLED;
		static const BooleanProperty EXTENDED;
		static const BooleanProperty EYE;
		static const BooleanProperty FALLING;
		static const BooleanProperty HANGING;
		static const BooleanProperty HAS_BOTTLE_0;
		static const BooleanProperty HAS_BOTTLE_1;
		static const BooleanProperty HAS_BOTTLE_2;
		static const BooleanProperty HAS_RECORD;
		static const BooleanProperty HAS_BOOK;
		static const BooleanProperty INVERTED;
		static const BooleanProperty IN_WALL;
		static const BooleanProperty LIT;
		static const BooleanProperty LOCKED;
		static const BooleanProperty OCCUPIED;
		static const BooleanProperty OPEN;
		static const BooleanProperty PERSISTENT;
		static const BooleanProperty POWERED;
		static const BooleanProperty SHORT;
		static const BooleanProperty SIGNAL_FIRE;
		static const BooleanProperty SNOWY;
		static const BooleanProperty TRIGGERED;
		static const BooleanProperty UNSTABLE;
		static const BooleanProperty WATERLOGGED;
		static const BooleanProperty BERRIES;
		static const BooleanProperty BLOOM;
		static const BooleanProperty SHRIEKING;
		static const BooleanProperty CAN_SUMMON;
		static const EnumProperty HORIZONTAL_AXIS;
		static const EnumProperty AXIS;
		static const BooleanProperty UP;
		static const BooleanProperty DOWN;
		static const BooleanProperty NORTH;
		static const BooleanProperty EAST;
		static const BooleanProperty SOUTH;
		static const BooleanProperty WEST;
		static const DirectionProperty FACING;
		static const DirectionProperty FACING_HOPPER;
		static const DirectionProperty HORIZONTAL_FACING;
		static const IntergerProperty FLOWER_AMOUNT;
		static const EnumProperty ORIENTATION;
		//...
};