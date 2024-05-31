#pragma once

#include <vector/vector.h>

#include "Property.h"

struct BooleanProperty : Property<bool> {
		BooleanProperty(const char* name) : Property<bool>(name) {
			mValues.push_back(true);
			mValues.push_back(false);
		}
};