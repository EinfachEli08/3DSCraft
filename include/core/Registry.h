#pragma once

#include "resources/ResourceLocation.h"
#include <string>
#include <unordered_map>

template <typename T>
class Registry {
	private:
		std::unordered_map<T, ResourceLocation*> registry;
		std::unordered_map<std::string, T> keyRegistry;

	public:
		void registerItem(const T& item, const std::string& name) {
			ResourceLocation* location = new ResourceLocation(name);
			registry[item]			   = location;
			keyRegistry[name]		   = item;
		}

		ResourceLocation* getKey(const T& item) const {
			auto it = registry.find(item);
			if (it != registry.end()) {
				return it->second;
			}
			return nullptr;
		}

		T getItem(const std::string& name) const {
			auto it = keyRegistry.find(name);
			if (it != keyRegistry.end()) {
				return it->second;
			}
			throw std::runtime_error("Item not found in registry");
		}
};

class BuiltInRegistries {
	public:
		static Registry<int> BLOCK;
		static Registry<int> ITEM;
};

Registry<int> BuiltInRegistries::BLOCK;
Registry<int> BuiltInRegistries::ITEM;
