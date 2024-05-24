#pragma once

#include "resources/ResourceKey.h"
#include <algorithm>
#include <unordered_map>

template <typename T>
class Registry {
	private:
		std::unordered_map<ResourceKey<T>, const T*> registry;
		ResourceKey<Registry<T>> mKey;

		const T* mDefaultValue = nullptr;
		ResourceLocation mDefaultKey;

	public:
		Registry(ResourceKey<Registry<T>>& key) : mKey(key), mDefaultKey("") {}
		Registry(ResourceKey<Registry<T>>& key, const char* defaultKey, const T* defaultValue)
			: mKey(key), mDefaultValue(defaultValue), mDefaultKey(defaultKey) {}

		~Registry() {
			for (auto& pair : registry) {
				delete pair.second;
			}
		}

		void register_(ResourceLocation& loc, const T* item) { register_(*ResourceKey<T>::createRegistryKey(loc), item); }

		void register_(ResourceKey<T>& key, const T* item) { registry[key] = item; }

		ResourceLocation getKey(const T* item) const {
			auto it = std::find_if(registry.begin(), registry.end(),
								   [item](const std::pair<ResourceKey<T>, const T*>& pair) { return pair.second == item; });
			return (it != registry.end()) ? it->first.getLocation() : mDefaultKey;
		}

		ResourceKey<T>* getResourceKey(const T* item) const {
			auto it = std::find_if(registry.begin(), registry.end(),
								   [item](const std::pair<ResourceKey<T>, const T*>& pair) { return pair.second == item; });
			return (it != registry.end()) ? &it->first : nullptr;
		}

		const T* get(ResourceKey<T>& key) const {
			auto it = registry.find(key);
			return (it != registry.end()) ? it->second : mDefaultValue;
		}

		const T* get(ResourceLocation& location) const {
			auto it = std::find_if(registry.begin(), registry.end(), [&location](const std::pair<ResourceKey<T>, const T*>& pair) {
				return pair.first.getLocation() == location;
			});
			return (it != registry.end()) ? it->second : mDefaultValue;
		}
};