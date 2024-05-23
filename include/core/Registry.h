#pragma once

#include <string>
#include <unordered_map>

#include "resources/ResourceLocation.h"

template <typename T>
class Registry {
	private:
		std::unordered_map<T, ResourceLocation*> registry;

	public:
		~Registry() {
			for (auto& pair : registry) {
				delete pair.second;
			}
		}

		void registerItem(const T& item, const char* name) {
			auto location  = new ResourceLocation(name);
			registry[item] = location;
		}

		ResourceLocation* getKey(const T& item) const {
			auto it = registry.find(item);
			if (it != registry.end()) {
				return it->second;
			}
			return nullptr;
		}

		void clear() {
			for (auto& pair : registry) {
				delete pair.second;
			}
			registry.clear();
		}
};
