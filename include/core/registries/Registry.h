#pragma once

#include <cstring>
#include <jansson.h>
#include <unordered_map>
#include <variant>
#include <vector>

#include "resources/ResourceLocation.h"
#include "resources/ResourceScheme.h"

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

		void serialize(const char* filename, const ResourceScheme& scheme) const {
			json_t* jsonRegistry = json_object();

			for (const auto& entry : entries) {
				json_t* jsonEntry = json_object();

				for (const auto& field : scheme.fields) {
					const char* fieldName = field.first;
					const char* fieldType = field.second;

					if (strcmp(fieldType, "bool") == 0) {
						json_object_set_new(jsonEntry, fieldName, json_boolean(std::get<bool>(entry.second.at(fieldName))));
					} else if (strcmp(fieldType, "int") == 0) {
						json_object_set_new(jsonEntry, fieldName, json_integer(std::get<int>(entry.second.at(fieldName))));
					} else if (strcmp(fieldType, "string") == 0) {
						json_object_set_new(jsonEntry, fieldName, json_string(std::get<const char*>(entry.second.at(fieldName))));
					} else if (strcmp(fieldType, "array_bool") == 0) {
						const std::vector<bool>& array = std::get<std::vector<bool>>(entry.second.at(fieldName));
						json_t* jsonArray			   = json_array();
						for (const bool& value : array) {
							json_array_append_new(jsonArray, json_boolean(value));
						}
						json_object_set_new(jsonEntry, fieldName, jsonArray);
					} else if (strcmp(fieldType, "array_int") == 0) {
						const std::vector<int>& array = std::get<std::vector<int>>(entry.second.at(fieldName));
						json_t* jsonArray			  = json_array();
						for (const int& value : array) {
							json_array_append_new(jsonArray, json_integer(value));
						}
						json_object_set_new(jsonEntry, fieldName, jsonArray);
					} else if (strcmp(fieldType, "array_string") == 0) {
						const std::vector<const char*>& array = std::get<std::vector<const char*>>(entry.second.at(fieldName));
						json_t* jsonArray					  = json_array();
						for (const char* value : array) {
							json_array_append_new(jsonArray, json_string(value));
						}
						json_object_set_new(jsonEntry, fieldName, jsonArray);
					}
				}

				json_object_set_new(jsonRegistry, entry.first.getPath(), jsonEntry);
			}

			json_dump_file(jsonRegistry, filename, JSON_INDENT(4));
			json_decref(jsonRegistry);
		}

		void deserialize(const char* filename, const ResourceScheme& scheme) {
			json_error_t error;
			json_t* jsonRegistry = json_load_file(filename, 0, &error);

			if (!jsonRegistry) {
				fprintf(stderr, "Error loading JSON: %s\n", error.text);
				return;
			}

			const char* key;
			json_t* value;

			json_object_foreach(jsonRegistry, key, value) {
				T entry;
				for (const auto& field : scheme.fields) {
					const char* fieldName = field.first;
					const char* fieldType = field.second;

					json_t* fieldValue = json_object_get(value, fieldName);
					if (!fieldValue) {
						fprintf(stderr, "Field '%s' not found in JSON object\n", fieldName);
						continue;
					}

					if (strcmp(fieldType, "bool") == 0) {
						entry[fieldName] = (bool)json_boolean_value(fieldValue);
					} else if (strcmp(fieldType, "int") == 0) {
						entry[fieldName] = (int)json_integer_value(fieldValue);
					} else if (strcmp(fieldType, "string") == 0) {
						entry[fieldName] = (char*)json_string_value(fieldValue);
					} else if (strcmp(fieldType, "array_bool") == 0) {
						std::vector<bool> array;
						size_t index;
						json_t* arrayValue;
						json_array_foreach(fieldValue, index, arrayValue) {
							array.push_back(json_boolean_value(arrayValue));
						}
						entry[fieldName] = array;
					} else if (strcmp(fieldType, "array_int") == 0) {
						std::vector<int> array;
						size_t index;
						json_t* arrayValue;
						json_array_foreach(fieldValue, index, arrayValue) {
							array.push_back(json_integer_value(arrayValue));
						}
						entry[fieldName] = array;
					} else if (strcmp(fieldType, "array_string") == 0) {
						std::vector<const char*> array;
						size_t index;
						json_t* arrayValue;
						json_array_foreach(fieldValue, index, arrayValue) {
							array.push_back(json_string_value(arrayValue));
						}
						entry[fieldName] = array;
					}
				}

				entries[ResourceLocation(key)] = entry;
			}

			json_decref(jsonRegistry);
		}
};
