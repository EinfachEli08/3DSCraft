#include "core/registries/Registries.h"

template <typename T>
static ResourceKey<Registry<T>> createRegistryKey(const char* name) {
	return *ResourceKey<Registry<T>>::createRegistryKey(ResourceLocation(name));
}

const ResourceKey<Registry<Block>> Registries::BLOCK = createRegistryKey<Block>("block");