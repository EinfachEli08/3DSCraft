#pragma once

class FeatureFlagSet;
class FeatureElement {
	protected:
		virtual FeatureFlagSet requiredFeatures();

	public:
		virtual bool isEnabled(FeatureFlagSet* flagSet) { return requiredFeatures().isSubsetOf(flagSet) }
};