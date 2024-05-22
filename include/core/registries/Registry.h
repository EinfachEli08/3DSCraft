#pragma once

#include <cstring>
#include <jansson.h>
#include <unordered_map>
#include <variant>
#include <vector>

#include "resources/ResourceLocation.h"

template <typename T>
class Registry {
	public:
		using EntryType = T;
		using EntryMap	= std::unordered_map<ResourceLocation, T, ResourceLocation::Hash>;

		ResourceLocation* mKey;
		EntryMap entries;

		Registry(const char* path) : Registry("minecraft", path) {}

		Registry(const char* ns, const char* path) { mKey = new ResourceLocation(ns, path); }

		~Registry() { delete mKey; }

		void registerEntry(ResourceLocation* loc, const T& entry) { entries[*loc] = entry; }

		T* getEntry(ResourceLocation* loc) {
			auto it = entries.find(*loc);
			if (it != entries.end()) {
				return &it->second;
			}
			return nullptr;
		}

		void serialize(const char* filename) const {}

		void deserialize(const char* filename) {}
};
