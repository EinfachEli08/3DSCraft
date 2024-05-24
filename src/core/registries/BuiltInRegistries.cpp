#include "core/registries/BuiltInRegistries.h"

#include "core/Registry.h"
#include "core/registries/Registries.h"
#include "resources/ResourceLocation.h"

#include "world/level/block/Blocks.h"

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
