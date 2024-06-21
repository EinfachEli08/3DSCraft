#include "util/JsonUtils.h"
#include "client/Exception.h"
#include <cstdio>

namespace JsonUtils {

bool hasField(cJSON* jsonObject, const char* fieldName) {
	return jsonObject != nullptr && cJSON_GetObjectItem(jsonObject, fieldName) != nullptr;
}

const char* jsonToString(cJSON* jsonElement) {
	if (jsonElement == nullptr) {
		return "null (missing)";
	} else if (cJSON_IsNull(jsonElement)) {
		return "null (json)";
	} else if (cJSON_IsArray(jsonElement)) {
		return "an array";
	} else if (cJSON_IsObject(jsonElement)) {
		return "an object";
	} else if (cJSON_IsNumber(jsonElement)) {
		return "a number";
	} else if (cJSON_IsBool(jsonElement)) {
		return "a boolean";
	} else if (cJSON_IsString(jsonElement)) {
		return "a string";
	}
	return "unknown type";
}

bool isString(cJSON* jsonObject, const char* fieldName) {
	if (!hasField(jsonObject, fieldName))
		return false;
	cJSON* jsonPrimitive = cJSON_GetObjectItem(jsonObject, fieldName);
	return cJSON_IsString(jsonPrimitive);
}

bool isString(cJSON* jsonElement) {
	return cJSON_IsString(jsonElement);
}

bool isBoolean(cJSON* jsonObject, const char* fieldName) {
	if (!hasField(jsonObject, fieldName))
		return false;
	cJSON* jsonPrimitive = cJSON_GetObjectItem(jsonObject, fieldName);
	return cJSON_IsBool(jsonPrimitive);
}

bool isJsonArray(cJSON* jsonObject, const char* fieldName) {
	if (!hasField(jsonObject, fieldName))
		return false;
	cJSON* jsonArray = cJSON_GetObjectItem(jsonObject, fieldName);
	return cJSON_IsArray(jsonArray);
}

bool isJsonPrimitive(cJSON* jsonObject, const char* fieldName) {
	if (!hasField(jsonObject, fieldName))
		return false;
	cJSON* jsonPrimitive = cJSON_GetObjectItem(jsonObject, fieldName);
	return cJSON_IsBool(jsonPrimitive) || cJSON_IsNumber(jsonPrimitive) || cJSON_IsString(jsonPrimitive);
}

const char* getString(cJSON* jsonElement, const char* fieldName) {
	if (cJSON_IsString(jsonElement)) {
		return jsonElement->valuestring;
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Expected %s to be a string, was %s", fieldName, jsonToString(jsonElement));
		Crash(buffer);
		return nullptr;	 // Unreachable, but keeps the compiler happy
	}
}

const char* getString(cJSON* jsonObject, const char* fieldName) {
	if (hasField(jsonObject, fieldName)) {
		cJSON* jsonElement = cJSON_GetObjectItem(jsonObject, fieldName);
		return getString(jsonElement, fieldName);
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Missing %s, expected to find a string", fieldName);
		Crash(buffer);
		return nullptr;	 // Unreachable, but keeps the compiler happy
	}
}

const char* getString(cJSON* jsonObject, const char* fieldName, const char* defaultValue) {
	return hasField(jsonObject, fieldName) ? getString(jsonObject, fieldName) : defaultValue;
}

bool getBoolean(cJSON* jsonElement, const char* fieldName) {
	if (cJSON_IsBool(jsonElement)) {
		return cJSON_IsTrue(jsonElement);
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Expected %s to be a Boolean, was %s", fieldName, jsonToString(jsonElement));
		Crash(buffer);
		return false;  // Unreachable, but keeps the compiler happy
	}
}

bool getBoolean(cJSON* jsonObject, const char* fieldName) {
	if (hasField(jsonObject, fieldName)) {
		cJSON* jsonElement = cJSON_GetObjectItem(jsonObject, fieldName);
		return getBoolean(jsonElement, fieldName);
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Missing %s, expected to find a Boolean", fieldName);
		Crash(buffer);
		return false;  // Unreachable, but keeps the compiler happy
	}
}

bool getBoolean(cJSON* jsonObject, const char* fieldName, bool defaultValue) {
	return hasField(jsonObject, fieldName) ? getBoolean(jsonObject, fieldName) : defaultValue;
}

float getFloat(cJSON* jsonElement, const char* fieldName) {
	if (cJSON_IsNumber(jsonElement)) {
		return (float)jsonElement->valuedouble;
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Expected %s to be a Float, was %s", fieldName, jsonToString(jsonElement));
		Crash(buffer);
		return 0.0f;  // Unreachable, but keeps the compiler happy
	}
}

float getFloat(cJSON* jsonObject, const char* fieldName) {
	if (hasField(jsonObject, fieldName)) {
		cJSON* jsonElement = cJSON_GetObjectItem(jsonObject, fieldName);
		return getFloat(jsonElement, fieldName);
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Missing %s, expected to find a Float", fieldName);
		Crash(buffer);
		return 0.0f;  // Unreachable, but keeps the compiler happy
	}
}

float getFloat(cJSON* jsonObject, const char* fieldName, float defaultValue) {
	return hasField(jsonObject, fieldName) ? getFloat(jsonObject, fieldName) : defaultValue;
}

int getInt(cJSON* jsonElement, const char* fieldName) {
	if (cJSON_IsNumber(jsonElement)) {
		return jsonElement->valueint;
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Expected %s to be an Int, was %s", fieldName, jsonToString(jsonElement));
		Crash(buffer);
		return 0;  // Unreachable, but keeps the compiler happy
	}
}

int getInt(cJSON* jsonObject, const char* fieldName) {
	if (hasField(jsonObject, fieldName)) {
		cJSON* jsonElement = cJSON_GetObjectItem(jsonObject, fieldName);
		return getInt(jsonElement, fieldName);
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Missing %s, expected to find an Int", fieldName);
		Crash(buffer);
		return 0;  // Unreachable, but keeps the compiler happy
	}
}

int getInt(cJSON* jsonObject, const char* fieldName, int defaultValue) {
	return hasField(jsonObject, fieldName) ? getInt(jsonObject, fieldName) : defaultValue;
}

cJSON* getJsonObject(cJSON* jsonElement, const char* fieldName) {
	if (cJSON_IsObject(jsonElement)) {
		return jsonElement;
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Expected %s to be a JSON object, was %s", fieldName, jsonToString(jsonElement));
		Crash(buffer);
		return nullptr;	 // Unreachable, but keeps the compiler happy
	}
}

cJSON* getJsonObject(cJSON* jsonObject, const char* fieldName) {
	if (hasField(jsonObject, fieldName)) {
		cJSON* jsonElement = cJSON_GetObjectItem(jsonObject, fieldName);
		return getJsonObject(jsonElement, fieldName);
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Missing %s, expected to find a JSON object", fieldName);
		Crash(buffer);
		return nullptr;	 // Unreachable, but keeps the compiler happy
	}
}

cJSON* getJsonObject(cJSON* jsonObject, const char* fieldName, cJSON* defaultValue) {
	return hasField(jsonObject, fieldName) ? getJsonObject(jsonObject, fieldName) : defaultValue;
}

cJSON* getJsonArray(cJSON* jsonElement, const char* fieldName) {
	if (cJSON_IsArray(jsonElement)) {
		return jsonElement;
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Expected %s to be a JSON array, was %s", fieldName, jsonToString(jsonElement));
		Crash(buffer);
		return nullptr;	 // Unreachable, but keeps the compiler happy
	}
}

cJSON* getJsonArray(cJSON* jsonObject, const char* fieldName) {
	if (hasField(jsonObject, fieldName)) {
		cJSON* jsonElement = cJSON_GetObjectItem(jsonObject, fieldName);
		return getJsonArray(jsonElement, fieldName);
	} else {
		char buffer[256];
		snprintf(buffer, sizeof(buffer), "Missing %s, expected to find a JSON array", fieldName);
		Crash(buffer);
		return nullptr;	 // Unreachable, but keeps the compiler happy
	}
}

cJSON* getJsonArray(cJSON* jsonObject, const char* fieldName, cJSON* defaultValue) {
	return hasField(jsonObject, fieldName) ? getJsonArray(jsonObject, fieldName) : defaultValue;
}

}  // namespace JsonUtils
