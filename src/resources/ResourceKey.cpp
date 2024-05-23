#include "resources/ResourceKey.h"

template <typename T>
ResourceKey<T>* ResourceKey<T>::create(const ResourceLocation& registry, const ResourceLocation& location) {
	InternKey key(registry, location);
	auto it = VALUES.find(key);
	if (it != VALUES.end()) {
		return it->second;
	} else {
		ResourceKey<T>* newKey = new ResourceKey<T>(registry, location);
		VALUES[key]			   = newKey;
		return newKey;
	}
}
template <typename T>
ResourceKey<T>* ResourceKey<T>::create(const ResourceKey<Registry<T>>& regKey, const ResourceLocation& location) {
	return create(regKey.getLocation(), location);
}

/*template <typename T>
ResourceKey<Registry<T>> ResourceKey<T>::createRegistryKey(ResourceLocation& p_135789_) {
	return create(BuiltInRegistries.ROOT_REGISTRY_NAME, p_135789_);
}*/
