#pragma once

#include "client/Exception.h"
#include <cJSON/cJSON.h>
#include <string>
#include <vector/vector.h>

class JsonRead {
		struct JsonValue {
				const char* key;
				void* dataRef;
		};

		cJSON* loadFromFile(const char* filePath);
		void parseJsonValue(cJSON* jsonValue, void* variablePtr);
		void deserializeArray(cJSON* arrayObj, void* arrayPtr);

	public:
		void jsonRead(const char* filename);

		template <typename T>
		void jsonAdd(const char* key, T* dataRef) {
			JsonValue val;
			val.key		= strdup(key);
			val.dataRef = (void*)dataRef;
			mCodec.push_back(val);
		}

	protected:
		vector<JsonValue> mCodec;

		cJSON* getNestedObject(cJSON* root, const std::string& nestedKey);
};
