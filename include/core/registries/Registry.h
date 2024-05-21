#pragma once

#include "resources/ResourceKey.h"
#include "resources/ResourceLocation.h"
#include <jansson.h>
#include <string>
#include <unordered_map>

template <typename T>
class Registry {
	public:
		ResourceKey<Registry<T>>* mKey;
		std::unordered_map<ResourceKey<T>, T, typename ResourceKey<T>::Hash> entries;

		Registry(const char* path) { Registry("minecraft", path); }
		Registry(const char* ns, const char* path) {
			mKey = new ResourceKey<Registry<T>>(new ResourceLocation(ns, path), new ResourceLocation(ns, path));
		}

		~Registry() { delete mKey; }

		void registerEntry(const ResourceKey<T>* key, const T& entry) { entries[*key] = entry; }
		void registerEntry(const ResourceLocation* loc, const T& entry) {
			registerEntry(new ResourceKey<T>(mKey->getRegistry(), loc), entry);
		}

		T* getEntry(const ResourceKey<T>* key) {
			auto it = entries.find(*key);
			if (it != entries.end()) {
				return &it->second;
			}
			return nullptr;
		}

		T* getEntry(const ResourceLocation* loc) { return getEntry(new ResourceKey<T>(mKey->getRegistry(), loc)); }

		void serialize(const char* filename) const {
			std::string filepath = "sdmc:/craft/" + std::string(filename);
			json_t* jsonRegistry = json_object();

			for (const auto& entryPtr : entries) {
				const auto* entry = &entryPtr;	// just fziacjsng work
				json_t* jsonEntry = json_object();
				json_object_set_new(jsonEntry, entry->first->getLocation()->getPath().c_str(), json_string(*entry.second));
				json_object_set_new(jsonRegistry, entry->first->getRegistry()->getPath().c_str(), jsonEntry);
			}

			json_dump_file(jsonRegistry, filepath.c_str(), JSON_INDENT(4));
			json_decref(jsonRegistry);
		}

		void deserialize(const char* filename) {
			std::string filepath = "sdmc:/craft/" + std::string(filename);
			json_error_t error;
			json_t* jsonRegistry = json_load_file(filepath.c_str(), 0, &error);

			if (!jsonRegistry) {
				fprintf(stderr, "Error loading JSON: %s\n", error.text);
				return;
			}

			const char* key;
			json_t* value;

			json_object_foreach(jsonRegistry, key, value) {
				T entryData = strdup(json_string_value(json_object_get(value, key)));
				registerEntry(new ResourceLocation(key), entryData);
			}

			json_decref(jsonRegistry);
		}
};
