#pragma once

#include <cJSON/cJSON.h>

namespace JsonUtils {
// Utility function to check if a JSON object contains a field with a given name
bool hasField(cJSON* jsonObject, const char* fieldName);

// Utility function to get a string representation of a JSON element
const char* jsonToString(cJSON* jsonElement);

// Checks if a JSON object contains a string field with the given name
bool isString(cJSON* jsonObject, const char* fieldName);

// Checks if a JSON element is a string
bool isString(cJSON* jsonElement);

// Checks if a JSON object contains a boolean field with the given name
bool isBoolean(cJSON* jsonObject, const char* fieldName);

// Checks if a JSON object contains an array field with the given name
bool isJsonArray(cJSON* jsonObject, const char* fieldName);

// Checks if a JSON object contains a field with the given name whose type is primitive
bool isJsonPrimitive(cJSON* jsonObject, const char* fieldName);

// Gets the string value of the given JSON element
const char* getString(cJSON* jsonElement, const char* fieldName);

// Gets the string value of the field on the JSON object with the given name
const char* getString(cJSON* jsonObject, const char* fieldName);

// Gets the string value of the field on the JSON object with the given name, or the given default value if the field is missing
const char* getString(cJSON* jsonObject, const char* fieldName, const char* defaultValue);

// Gets the boolean value of the given JSON element
bool getBoolean(cJSON* jsonElement, const char* fieldName);

// Gets the boolean value of the field on the JSON object with the given name
bool getBoolean(cJSON* jsonObject, const char* fieldName);

// Gets the boolean value of the field on the JSON object with the given name, or the given default value if the field is missing
bool getBoolean(cJSON* jsonObject, const char* fieldName, bool defaultValue);

// Gets the float value of the given JSON element
float getFloat(cJSON* jsonElement, const char* fieldName);

// Gets the float value of the field on the JSON object with the given name
float getFloat(cJSON* jsonObject, const char* fieldName);

// Gets the float value of the field on the JSON object with the given name, or the given default value if the field is missing
float getFloat(cJSON* jsonObject, const char* fieldName, float defaultValue);

// Gets the integer value of the given JSON element
int getInt(cJSON* jsonElement, const char* fieldName);

// Gets the integer value of the field on the JSON object with the given name
int getInt(cJSON* jsonObject, const char* fieldName);

// Gets the integer value of the field on the JSON object with the given name, or the given default value if the field is missing
int getInt(cJSON* jsonObject, const char* fieldName, int defaultValue);

// Gets the given JSON element as a JSON object
cJSON* getJsonObject(cJSON* jsonElement, const char* fieldName);

// Gets the JSON object field on the JSON object with the given name
cJSON* getJsonObject(cJSON* jsonObject, const char* fieldName);

// Gets the JSON object field on the JSON object with the given name, or the given default value if the field is missing
cJSON* getJsonObject(cJSON* jsonObject, const char* fieldName, cJSON* defaultValue);

// Gets the given JSON element as a JSON array
cJSON* getJsonArray(cJSON* jsonElement, const char* fieldName);

// Gets the JSON array field on the JSON object with the given name
cJSON* getJsonArray(cJSON* jsonObject, const char* fieldName);

// Gets the JSON array field on the JSON object with the given name, or the given default value if the field is missing
cJSON* getJsonArray(cJSON* jsonObject, const char* fieldName, cJSON* defaultValue);
}  // namespace JsonUtils
