#pragma once

#include "Property.h"
#include "core/Direction.h"
#include <cstdarg>

class DirectionProperty : public Property<Direction> {
	public:
		DirectionProperty(const char* name, ...) : Property<Direction>(name) {
			va_list args;
			va_start(args, name);
			while (true) {
				const Direction enm = va_arg(args, Direction);
				if (enm == Direction::INVALID)
					break;
				mValues.push_back(enm);
			}
			va_end(args);
		}
};
