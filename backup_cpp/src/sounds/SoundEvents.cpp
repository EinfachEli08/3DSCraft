#include "sounds/SoundEvents.h"

#include "core/Registry.h"
#include "core/registries/BuiltInRegistries.h"
#include "sounds/SoundEvent.h"

static const SoundEvent* registr(ResourceLocation loc1, ResourceLocation loc2) {
	return BuiltInRegistries::SOUND_EVENT->registr(loc1, SoundEvent::createVariableRangeEvent(loc2));
}
static const SoundEvent* registr(ResourceLocation location) {
	return registr(location, location);
}
static const SoundEvent* registr(const char* name) {
	return registr(ResourceLocation(name));
}

const SoundEvent* SoundEvents::ITEM_PICKUP = registr("entity.item.pickup");
const SoundEvent* SoundEvents::EMPTY	   = registr("minecraft::intentionally_empty");