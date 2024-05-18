#pragma once

#include <3ds/types.h>

class FeatureFlag;
class FeatureFlagUniverse;
class FeatureFlagSet {
	public:
		static const FeatureFlagSet* tryCreate(FeatureFlagUniverse* universe, FeatureFlag flags[]);
		static const FeatureFlagSet* of();
		static const FeatureFlagSet* of(FeatureFlag flag);
		static const FeatureFlagSet* of(FeatureFlag flag, FeatureFlag flags[]);

		FeatureFlagSet(FeatureFlagUniverse* universe, s64 mask) : mUniverse(universe), mMask(mask) {}

		const FeatureFlagSet* join(FeatureFlagSet* flagSet);
		int hashCode();
		bool contains(FeatureFlag flag);
		bool isSubsetOf(FeatureFlagSet* flagSet);
		bool operator==(FeatureFlagSet* flagSet);

	private:
		FeatureFlagUniverse* mUniverse;
		s64 mMask;
};