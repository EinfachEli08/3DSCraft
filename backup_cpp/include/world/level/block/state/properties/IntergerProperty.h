#pragma once

#include "Property.h"
#include <vector/vector.h>

class IntergerProperty : Property<int> {
		const int mMin;
		const int mMax;

	public:
		IntergerProperty(const char* name, const int min, const int max) : mMin(min), mMax(max), Property<int>(name) {
			if (min < 0)
				printf("Min value of %s must be 0 or greater", name);
			if (max < min)
				printf("Max value of %s mst be greated than min(%i)", name, min);

			for (int i = min; i <= max; ++i) {
				mValues.push_back(i);
			}
		}
};
