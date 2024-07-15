#pragma once

#include <functional>
#include <string>
#include <unordered_map>

#include "core/registries/BuiltInRegistries.h"
#include "resources/ResourceLocation.h"

/*class InternKey {
	public:
		const ResourceLocation registry;
		const ResourceLocation location;

		InternKey(const ResourceLocation& registry, const ResourceLocation& location) : registry(registry), location(location) {}

		bool operator==(const InternKey& other) const { return registry == other.registry && location == other.location; }

		struct HashFunction {
				size_t operator()(const InternKey& key) const {
					return ResourceLocation::HashFunction()(key.registry) ^ ResourceLocation::HashFunction()(key.location);
				}
		};
};*/

template <typename T>
class Registry;

template <typename T>
class ResourceKey {
	private:
		ResourceLocation mRegistryName;
		ResourceLocation mLocation;

		// static std::unordered_map<InternKey, ResourceKey<T>, InternKey::HashFunction> VALUES;

	public:
		ResourceKey(const ResourceLocation& registry, const ResourceLocation& loc) : mRegistryName(registry), mLocation(loc) {}

		static ResourceKey<T>* create(const ResourceLocation& registry, const ResourceLocation& location) {
			/*InternKey key(registry, location);
			auto it = VALUES.find(key);
			if (it != VALUES.end()) {
				return &it->second;
			} else {
				auto result = VALUES.emplace(key, ResourceKey<T>(registry, location));
				return &result.first->second;
			}*/
			return new ResourceKey<T>(registry, location);
		}

		static ResourceKey<T>* create(const ResourceKey<Registry<T>>& regKey, const ResourceLocation& location) {
			return create(regKey.getRegistry(), location);
		}

		static ResourceKey<T>* createRegistryKey(const ResourceLocation& location) {
			return create(BuiltInRegistries::ROOT_REGISTRY_NAME, location);
		}

		bool isFor(const ResourceKey<Registry<T>>& other) const { return mRegistryName == other.mRegistryName; }

		template <typename E>
		ResourceKey<E>* cast(const ResourceKey<Registry<E>>& other) {
			return isFor(other) ? reinterpret_cast<ResourceKey<E>*>(this) : nullptr;
		}

		bool operator==(const ResourceKey<T>& key) const { return key.mLocation == mLocation && key.mRegistryName == mRegistryName; }

		ResourceLocation getLocation() const { return mLocation; }
		ResourceLocation getRegistry() const { return mRegistryName; }
};

// Initialize the static member
/*template <typename T>
std::unordered_map<InternKey, ResourceKey<T>, InternKey::HashFunction> ResourceKey<T>::VALUES;
*/
namespace std {
template <typename T>
struct hash<ResourceKey<T>> {
		std::size_t operator()(const ResourceKey<T>& key) const {
			return std::hash<std::string>{}(key.getLocation().getNamespace()) ^ std::hash<std::string>{}(key.getLocation().getPath());
		}
};
}  // namespace std
