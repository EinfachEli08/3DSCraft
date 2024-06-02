#pragma once

#include "Property.h"
#include "core/Direction.h"
#include <cstdarg>

class DirectionProperty : public Property<Direction::_> {
	public:
		DirectionProperty(const char* name, ...) : Property<Direction::_>(name) {
			va_list args;
			va_start(args, name);
			while (true) {
				const Direction::_ enm = va_arg(args, Direction::_);
				if (enm == Direction::NONE)
					break;
				mValues.push_back(enm);
			}
			va_end(args);
		}
};
