#pragma once

#include <cJSON/cJSON.h>
#include <string>
#include <vector/vector.h>

class JsonRead {
		struct JsonValue {
				const std::string key;
				void* dataRef;
		};

		cJSON* loadFromFile(const char* filePath);
		void parseJsonValue(cJSON* jsonValue, void* variablePtr);
		void deserializeArray(cJSON* arrayObj, void* arrayPtr);

	public:
		void jsonRead(const char* filename);

		template <typename T>
		void jsonAdd(const std::string& key, T* dataRef) {
			const std::string myKey = key;
			const JsonValue val		= {myKey, (void*)dataRef};
			mCodec.push_back(val);
		}

	protected:
		vector<JsonValue> mCodec;

		cJSON* getNestedObject(cJSON* root, const std::string& nestedKey);
};
