#include "util/JsonUtils.h"
#include "util/FileIO.h"

namespace JsonUtils {

bool isString(const cJSON* jsonElement, const char* fieldName) {
	const cJSON* field = cJSON_GetObjectItemCaseSensitive(jsonElement, fieldName);
	return field && cJSON_IsString(field);
}

bool isBoolean(const cJSON* jsonElement, const char* fieldName) {
	const cJSON* field = cJSON_GetObjectItemCaseSensitive(jsonElement, fieldName);
	return field && cJSON_IsBool(field);
}

bool isJsonArray(const cJSON* jsonElement, const char* fieldName) {
	const cJSON* field = cJSON_GetObjectItemCaseSensitive(jsonElement, fieldName);
	return field && cJSON_IsArray(field);
}

bool isJsonPrimitive(const cJSON* jsonElement, const char* fieldName) {
	const cJSON* field = cJSON_GetObjectItemCaseSensitive(jsonElement, fieldName);
	return field && isJsonPrimitive(field);
}

bool isJsonPrimitive(const cJSON* field) {
	return cJSON_IsString(field) || cJSON_IsNumber(field) || cJSON_IsBool(field) || cJSON_IsNull(field);
}

bool isJsonObject(const cJSON* jsonElement, const char* fieldName) {
	const cJSON* field = cJSON_GetObjectItemCaseSensitive(jsonElement, fieldName);
	return isJsonObject(field);
}
bool isJsonObject(const cJSON* field) {
	return field && cJSON_IsObject(field);
}

const char* getString(const cJSON* jsonElement, std::string fieldName, const char* defaultValue) {
	const cJSON* field = getField(jsonElement, fieldName);
	return field && cJSON_IsString(field) ? field->valuestring : defaultValue;
}

bool getBoolean(const cJSON* jsonElement, std::string fieldName, bool defaultValue) {
	const cJSON* field = getField(jsonElement, fieldName);
	return field && cJSON_IsBool(field) ? cJSON_IsTrue(field) : defaultValue;
}

float getFloat(const cJSON* jsonElement, std::string fieldName, float defaultValue) {
	const cJSON* field = getField(jsonElement, fieldName);
	return field && cJSON_IsNumber(field) ? static_cast<float>(field->valuedouble) : defaultValue;
}

int getInt(const cJSON* jsonElement, std::string fieldName, int defaultValue) {
	const cJSON* field = getField(jsonElement, fieldName);
	return field && cJSON_IsNumber(field) ? field->valueint : defaultValue;
}

cJSON* getJsonObject(cJSON* jsonElement, std::string fieldName) {
	const cJSON* field = getField(jsonElement, fieldName);
	return field && cJSON_IsObject(field) ? cJSON_Duplicate(const_cast<cJSON*>(field), true) : nullptr;
}

cJSON* getJsonArray(cJSON* jsonElement, std::string fieldName) {
	const cJSON* field = getField(jsonElement, fieldName);
	return field && cJSON_IsArray(field) ? cJSON_Duplicate(const_cast<cJSON*>(field), true) : nullptr;
}

cJSON* getJsonFile(const char* filename) {
	const char* fileContent = FileIO::getText(filename, "rb");	// Use the provided filename argument
	if (!fileContent) {
		return nullptr;	 // Handle error: file not found or unable to read
	}
	cJSON* json = cJSON_Parse(fileContent);
	free((void*)fileContent);  // Free allocated file content after parsing
	return json;
}

const char* toString(const cJSON* jsonElement) {
	if (!jsonElement) {
		return "null (missing)";
	} else if (cJSON_IsNull(jsonElement)) {
		return "null (json)";
	}
	return cJSON_Print(jsonElement);
}

}  // namespace JsonUtils
