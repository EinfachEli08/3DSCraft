#pragma once

#include "Property.h"
#include "core/Direction.h"
#include <cstdarg>

struct EnumProperty : Property<int> {
		EnumProperty(const char* name, ...) : Property<int>(name) {
			va_list args;
			va_start(args, name);
			for (int enm = va_arg(args, int); enm != -1; enm = va_arg(args, int)) {
				mValues.push_back(enm);
			}
			va_end(args);
		}
};