#pragma once

#include "3ds/types.h"

class FeatureFlagUniverse;
class FeatureFlag {
	public:
		FeatureFlag(FeatureFlagUniverse* universe, int mask) : mUniverse(universe), mMask(mask) {}

		FeatureFlagUniverse* mUniverse;
		s64 mMask;
};