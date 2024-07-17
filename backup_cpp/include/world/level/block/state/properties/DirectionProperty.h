#pragma once

#include "Property.h"
#include "core/Direction.h"
#include <cstdarg>

class DirectionProperty : public Property<u8> {
	public:
		DirectionProperty(const char* name, ...) : Property<u8>(name) {
			va_list args;
			va_start(args, name);
			while (true) {
				int enm = va_arg(args, int);
				if (!enm)
					break;
				mValues.push_back(enm);
			}
			va_end(args);
		}
};
