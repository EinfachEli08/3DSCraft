#pragma once

#include <unordered_map>

#include "core/registries/BuiltInRegistries.h"
#include "resources/ResourceLocation.h"

class InternKey {
	public:
		ResourceLocation* registry;
		ResourceLocation* location;

		InternKey(ResourceLocation* registry, ResourceLocation* location) : registry(registry), location(location) {}

		bool operator==(const InternKey& other) const { return registry == other.registry && location == other.location; }

		struct HashFunction {
				size_t operator()(const InternKey& key) const {
					return ResourceLocation::HashFunction()(key.registry) ^ ResourceLocation::HashFunction()(key.location);
				}
		};
};

template <typename T>
class Registry;

template <typename T>
class ResourceKey {
	private:
		ResourceLocation* registryName;
		ResourceLocation* location;

		static std::unordered_map<InternKey, ResourceKey<T>*, InternKey::HashFunction> VALUES;
		ResourceKey(ResourceLocation* registry, ResourceLocation* loc) : registryName(registry), location(loc) {}

	public:
		static ResourceKey<T>* create(ResourceLocation* registry, ResourceLocation* location) {
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
		static ResourceKey<T>* create(const ResourceKey<Registry<T>>& regKey, ResourceLocation* location) {
			return create(regKey.getLocation(), location);
		}
		static ResourceKey<T>* createRegistryKey(ResourceLocation* location) {
			return create(BuiltInRegistries::ROOT_REGISTRY_NAME, location);
		}

		bool isFor(const ResourceKey<Registry<T>>& other) const { return this->registryName == other.registryName; }

		template <typename E>
		ResourceKey<E>* cast(const ResourceKey<Registry<E>>& other) {
			return isFor(other) ? (ResourceKey<E>*)(this) : nullptr;
		}
		ResourceLocation* getLocation() const { return location; }

		ResourceLocation* getRegistry() const { return registryName; }
};

// Initialize the static member
template <typename T>
std::unordered_map<InternKey, ResourceKey<T>*, InternKey::HashFunction> ResourceKey<T>::VALUES;
