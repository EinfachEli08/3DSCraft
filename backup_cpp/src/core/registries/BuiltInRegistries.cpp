#include "core/registries/BuiltInRegistries.h"
#include "core/Registry.h"
#include "core/registries/Registries.h"
#include "resources/ResourceLocation.h"

#include "sounds/SoundEvents.h"
#include "world/level/block/Blocks.h"

#include "sounds/SoundEvent.h"

ResourceLocation BuiltInRegistries::ROOT_REGISTRY_NAME("root");

template <typename T>
static Registry<T>* internalRegister(ResourceKey<Registry<T>> regKey, Registry<T>* registry) {
	//...
	return registry;
}

template <typename T>
static Registry<T>* registerDefaulted(ResourceKey<Registry<T>> regKey, const char* defaultKey, const T* defaultValue) {
	return internalRegister(regKey, new Registry<T>(regKey, defaultKey, defaultValue));
}
template <typename T>
static Registry<T>* registerSimple(ResourceKey<Registry<T>> regKey, const T* defaultValue) {
	return internalRegister(regKey, new Registry<T>(regKey, defaultValue));
}

Registry<Block>* BuiltInRegistries::BLOCK			 = registerDefaulted(Registries::BLOCK, "air", Blocks::GRASS);
Registry<SoundEvent>* BuiltInRegistries::SOUND_EVENT = registerSimple(Registries::SOUND_EVENT, SoundEvents::ITEM_PICKUP);
