#pragma once

#include "resources/ResourceKey.h"
#include <algorithm>
#include <unordered_map>

template <typename T>
class Registry {
	private:
		std::unordered_map<ResourceKey<T>, const T*> registry;
		ResourceKey<Registry<T>> mKey;

		const T* mDefaultValue;
		ResourceLocation mDefaultKey;

	public:
		Registry(const ResourceKey<Registry<T>>& key, const T* defaultValue) : mKey(key), mDefaultKey(""), mDefaultValue(defaultValue) {}
		Registry(const ResourceKey<Registry<T>>& key, const char* defaultKey, const T* defaultValue)
			: mKey(key), mDefaultValue(defaultValue), mDefaultKey(defaultKey) {}

		~Registry() {
			for (auto& pair : registry) {
				delete pair.second;
			}
		}

		const T* registr(const ResourceLocation& loc, const T* item) {
			registr(*ResourceKey<T>::createRegistryKey(loc), item);
			return item;
		}

		const T* registr(const ResourceKey<T>& key, const T* item) {
			registry[key] = item;
			return item;
		}

		ResourceLocation getKey(const T* item) const {
			auto it = std::find_if(registry.begin(), registry.end(),
								   [item](const std::pair<ResourceKey<T>, const T*>& pair) { return pair.second == item; });
			return (it != registry.end()) ? it->first.getLocation() : mDefaultKey;
		}

		const ResourceKey<T>* getResourceKey(const T* item) const {
			auto it = std::find_if(registry.begin(), registry.end(),
								   [item](const std::pair<ResourceKey<T>, const T*>& pair) { return pair.second == item; });
			return (it != registry.end()) ? &it->first : nullptr;
		}

		const T* get(const ResourceKey<T>& key) const {
			auto it = registry.find(key);
			return (it != registry.end()) ? it->second : mDefaultValue;
		}

		const T* get(const ResourceLocation& location) const {
			auto it = std::find_if(registry.begin(), registry.end(), [&location](const std::pair<ResourceKey<T>, const T*>& pair) {
				return pair.first.getLocation() == location;
			});
			return (it != registry.end()) ? it->second : mDefaultValue;
		}
};
