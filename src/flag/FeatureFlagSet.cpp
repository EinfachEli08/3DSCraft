#include "world/flag/FeatureFlagSet.h"

#include "world/flag/FeatureFlag.h"
#include "world/flag/FeatureFlagUniverse.h"

const FeatureFlagSet* cEmpty = new FeatureFlagSet(0, 0);

s64 computeMask(FeatureFlagUniverse* universe, s64 mask, FeatureFlag flags[]) {
	int sizeFlags = sizeof(*flags) / sizeof(FeatureFlag);
	for (int i = 0; i < sizeFlags; i++) {
		if (universe != flags[i].mUniverse)
			// printf("ERROR: Mismatched feature universe, expected \_" + *universe + "\', but got \'" + featureflag.universe + "\'");

			mask |= flags[i].mMask;
	}

	return mask;
}

const FeatureFlagSet* FeatureFlagSet::tryCreate(FeatureFlagUniverse* universe, FeatureFlag flags[]) {
	if (flags == 0) {
		return cEmpty;
	} else {
		s64 mask = computeMask(universe, 0, flags);
		return new FeatureFlagSet(universe, mask);
	}
}

const FeatureFlagSet* FeatureFlagSet::of() {
	return cEmpty;
}
const FeatureFlagSet* FeatureFlagSet::of(FeatureFlag flag) {
	return new FeatureFlagSet(flag.mUniverse, flag.mMask);
}

const FeatureFlagSet* FeatureFlagSet::of(FeatureFlag flag, FeatureFlag flags[]) {
	s64 mask = (flags == 0) ? flag.mMask : computeMask(flag.mUniverse, flag.mMask, flags);
	return new FeatureFlagSet(flag.mUniverse, mask);
}

bool FeatureFlagSet::contains(FeatureFlag flag) {
	if (mUniverse != flag.mUniverse)
		return false;
	else
		return (mMask & flag.mMask) != 0;
}
bool FeatureFlagSet::isSubsetOf(FeatureFlagSet* flagSet) {
	if (mUniverse == nullptr)
		return true;
	else if (mUniverse != flagSet->mUniverse)
		return false;
	else
		return (mMask & flagSet->mMask) == 0;
}

const FeatureFlagSet* FeatureFlagSet::join(FeatureFlagSet* flagSet) {
	if (mUniverse == nullptr)
		return flagSet;
	else if (flagSet->mUniverse == nullptr)
		return this;
	// else if (mUniverse != flagSet->mUniverse)
	//  printf("Mismatched set elements: \'" + this.universe + "\' != \'" + p_251527_.universe + "\'");
	else
		return new FeatureFlagSet(mUniverse, mMask | flagSet->mMask);
}

bool FeatureFlagSet::operator==(FeatureFlagSet* flagSet) {
	if (this == flagSet)
		return true;
	else {
		if (mUniverse == flagSet->mUniverse && mMask && flagSet->mMask)
			return true;

		return false;
	}
}