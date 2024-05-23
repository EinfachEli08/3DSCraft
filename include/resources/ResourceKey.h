#pragma once

#include "ResourceLocation.h"
#include <unordered_map>

class InternKey {
	public:
		ResourceLocation registry;
		ResourceLocation location;

		InternKey(const ResourceLocation& registry, const ResourceLocation& location) : registry(registry), location(location) {}

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
		ResourceLocation registryName;
		ResourceLocation location;

		static std::unordered_map<InternKey, ResourceKey<T>*, InternKey::HashFunction> VALUES;

	public:
		ResourceKey(const ResourceLocation& registry, const ResourceLocation& loc) : registryName(registry), location(loc) {}

		static ResourceKey<Registry<T>>* createRegistryKey(const ResourceLocation& location);
		static ResourceKey<T>* create(const ResourceKey<Registry<T>>& regKey, const ResourceLocation& location);
		static ResourceKey<T>* create(const ResourceLocation& registryName, const ResourceLocation& location);

		bool isFor(const ResourceKey<Registry<T>>& other) const { return this->registryName == other.registryName; }

		template <typename E>
		ResourceKey<E>* cast(const ResourceKey<Registry<E>>& other) {
			return isFor(other) ? (ResourceKey<E>*)(this) : nullptr;
		}
		ResourceLocation getLocation() const { return location; }

		ResourceLocation getRegistry() const { return registryName; }
};

// Initialize the static member
template <typename T>
std::unordered_map<InternKey, ResourceKey<T>*, InternKey::HashFunction> ResourceKey<T>::VALUES;
