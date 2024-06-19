#include "util/JsonIO.h"

#include "client/Exception.h"
#include "util/Paths.h"

// Load

cJSON* JsonRead::loadFromFile(const char* filePath) {
	const std::string path = Path::root + filePath;

	FILE* file = fopen(path.c_str(), "rb");
	if (!file) {
		Crash("Could not open file: %s", path.c_str());
		return nullptr;
	}

	fseek(file, 0, SEEK_END);
	long fileSize = ftell(file);
	fseek(file, 0, SEEK_SET);

	char* fileContent = (char*)malloc(fileSize + 1);
	fread(fileContent, 1, fileSize, file);
	fclose(file);

	fileContent[fileSize] = '\0';

	cJSON* json = cJSON_Parse(fileContent);
	free(fileContent);

	if (!json) {
		Crash("Error parsing JSON file");
		return nullptr;
	}
	return json;
}

void JsonRead::parseJsonValue(cJSON* jsonValue, void* variablePtr) {
	if (cJSON_IsBool(jsonValue))
		*((bool*)variablePtr) = cJSON_IsTrue(jsonValue) ? true : false;

	else if (cJSON_IsNumber(jsonValue)) {
		if (strstr(jsonValue->valuestring, ".") == nullptr)
			*((int*)variablePtr) = jsonValue->valueint;
		else
			*((double*)variablePtr) = jsonValue->valuedouble;

	} else if (cJSON_IsString(jsonValue)) {
		strncpy((char*)variablePtr, jsonValue->valuestring, 256);
		((char*)variablePtr)[49] = '\0';  // Ensure null termination

	} else if (cJSON_IsArray(jsonValue))
		deserializeArray(jsonValue, variablePtr);

	else
		Crash("Unsupported JSON type");
}

void JsonRead::deserializeArray(cJSON* arrayObj, void* arrayPtr) {
	cJSON* arrayItem = nullptr;
	int index		 = 0;
	cJSON_ArrayForEach(arrayItem, arrayObj) {
		parseJsonValue(arrayItem, (void*)((char*)arrayPtr + index));
		index++;
	}
}

void JsonRead::jsonRead(const char* filename) {
	cJSON* json = loadFromFile(filename);

	if (!json) {
		Crash("Failed to load JSON from file: %s", filename);
		return;
	}

	for (JsonValue& value : mCodec) {
		if (value.key.empty()) {
			Crash("No key provided in JsonValue");
			continue;
		}

		cJSON* obj = nullptr;
		if (value.key.find('.') != std::string::npos)
			obj = getNestedObject(json, value.key);

		else
			obj = cJSON_GetObjectItemCaseSensitive(json, value.key.c_str());

		if (!obj) {
			Crash("Could not get json key: %s from file: %s", value.key, filename);
			continue;
		}

		parseJsonValue(obj, value.dataRef);
	}

	cJSON_Delete(json);
}

cJSON* JsonRead::getNestedObject(cJSON* root, const std::string& nestedKey) {
	cJSON* current = root;
	std::string key;
	size_t pos	   = 0;
	size_t prevPos = 0;

	while ((pos = nestedKey.find('.', prevPos)) != std::string::npos) {
		key		= nestedKey.substr(prevPos, pos - prevPos);
		current = cJSON_GetObjectItemCaseSensitive(current, key.c_str());
		if (!current) {
			Crash("Returned nullptr %s, %i", key.c_str(), pos);
			return nullptr;
		}
		prevPos = pos + 1;
	}
	key				= nestedKey.substr(prevPos);
	cJSON* finalObj = cJSON_GetObjectItemCaseSensitive(current, key.c_str());

	return finalObj;
}

// Save
/*
void JsonRead::saveToFile(const char* filePath, const cJSON* json) {
	const std::string path = Path::root + filePath;

	char* jsonString = cJSON_Print(json);
	if (!jsonString) {
		Crash("Error printing JSON");
		return;
	}

	FILE* file = fopen(path.c_str(), "wb");
	if (!file) {
		free(jsonString);
		Crash("Could not open file for writing: %s", path.c_str());
		return;
	}

	fwrite(jsonString, 1, strlen(jsonString), file);
	fclose(file);

	free(jsonString);
}
*/