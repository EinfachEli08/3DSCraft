/*#pragma once

#include <cJSON/cJSON.h>
#include <string>

namespace JsonUtils {

bool isString(const cJSON* jsonElement, const char* fieldName);
bool isBoolean(const cJSON* jsonElement, const char* fieldName);
bool isJsonArray(const cJSON* jsonElement, const char* fieldName);
bool isJsonObject(const cJSON* jsonElement, const char* fieldName);
bool isJsonObject(const cJSON* field);
bool isJsonPrimitive(const cJSON* jsonElement, const char* fieldName);
bool isJsonPrimitive(const cJSON* field);
inline cJSON* getField(const cJSON* jsonElement, std::string fieldName) {
	return cJSON_GetObjectItemCaseSensitive(jsonElement, fieldName.c_str());
}
inline bool hasField(const cJSON* jsonElement, std::string fieldName) {
	return getField(jsonElement, fieldName) != nullptr;
}

const char* getString(const cJSON* jsonElement, std::string fieldName, const char* defaultValue = nullptr);
bool getBoolean(const cJSON* jsonElement, std::string fieldName, bool defaultValue = false);
float getFloat(const cJSON* jsonElement, std::string fieldName, float defaultValue = 0.0f);
int getInt(const cJSON* jsonElement, std::string fieldName, int defaultValue = 0);

cJSON* getJsonObject(cJSON* jsonElement, std::string fieldName);
cJSON* getJsonArray(cJSON* jsonElement, std::string fieldName);
cJSON* getJsonFile(const char* filename);

const char* toString(const cJSON* jsonElement);

}  // namespace JsonUtils
*/
