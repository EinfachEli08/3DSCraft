#pragma once

#include "client/Exception.h"
#include <cJSON/cJSON.h>
#include <cstring>
#include <string>
#include <vector/vector.h>

class JsonRead {
		struct JsonValue {
				const char* key;
				void* dataRef;
		};

		vector<JsonValue> mCodec;

		cJSON* loadFromFile(const char* filePath);
		void parseJsonValue(cJSON* jsonValue, void* variablePtr);
		void deserializeArray(cJSON* arrayObj, void* arrayPtr);
		cJSON* getNestedObject(cJSON* root, const char* nestedKey);

	public:
		void jsonRead(const char* filename);

		template <typename T>
		void jsonAdd(const char* key, T* dataRef) {
			mCodec.push_back({key, (void*)dataRef});
		}
};
