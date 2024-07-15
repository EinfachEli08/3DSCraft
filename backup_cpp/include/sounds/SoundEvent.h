#pragma once

#include "resources/ResourceLocation.h"

class SoundEvent {
		constexpr static float cDefaultRange = 16.0F;

		ResourceLocation mLocation;
		float mRange;
		bool isNewSystem;

		SoundEvent(ResourceLocation location, float range, bool newSystem) : mLocation(location), mRange(range), isNewSystem(newSystem) {}

	public:
		static SoundEvent* createVariableRangeEvent(ResourceLocation location) { return new SoundEvent(location, cDefaultRange, false); }
		static SoundEvent* createFixedRangeEvent(ResourceLocation location, float range) { return new SoundEvent(location, range, true); }

		ResourceLocation getLocation() const { return mLocation; }
		float getRange(float range) const { return isNewSystem ? mRange : (range > 1.0F ? cDefaultRange * range : cDefaultRange); }
};