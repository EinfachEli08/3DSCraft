#pragma once

#include <string>
#include <unordered_map>

#include "resources/ResourceKey.h"

template <typename T>
class Registry {
	private:
		std::unordered_map<ResourceKey<T>*, T*> registry;
		ResourceKey<Registry<T>>* mKey;

	public:
		Registry(ResourceKey<T>* key) : mKey(key) {}
		~Registry() {
			for (auto& pair : registry) {
				delete pair.first;
			}
		}

		void registerItem(const ResourceLocation* loc, const T* item) { registry[loc] = item; }

		ResourceKey<T>* getResourceKey(const T* item) const {
			auto it = registry.find(item);
			if (it != registry.end()) {
				return it->first;
			}
			return nullptr;
		}
		ResourceLocation* getKey(const T* item) const { return getResourceKey(item)->getLocation(); }
		T* get(const ResourceKey<T>* key) const {
			auto it = registry.find(key);
			if (it != registry.end()) {
				return it->second;
			}
			return nullptr;
		}
};
