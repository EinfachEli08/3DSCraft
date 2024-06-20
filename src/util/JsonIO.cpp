#include "util/JsonIO.h"
#include "util/Paths.h"

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
	if (cJSON_IsString(jsonValue))
		*(char**)variablePtr = strdup(cJSON_Print(jsonValue));

	else if (cJSON_IsNumber(jsonValue)) {
		if (jsonValue->valuestring == nullptr || strstr(jsonValue->valuestring, ".") == nullptr) {
			*((int*)variablePtr) = jsonValue->valueint;
		} else {
			*((double*)variablePtr) = jsonValue->valuedouble;
		}
	} else if (cJSON_IsBool(jsonValue)) {
		*((bool*)variablePtr) = cJSON_IsTrue(jsonValue) ? true : false;
	} else if (cJSON_IsArray(jsonValue)) {
		deserializeArray(jsonValue, variablePtr);
	} else if (cJSON_IsNull(jsonValue)) {
		Crash("Reading NULL value from JSON");
	} else {
		Crash("Unsupported JSON type\nkey string: %s\nkey ref: %p\nkey type: %d", jsonValue->string, jsonValue, jsonValue->type);
	}
}

void JsonRead::deserializeArray(cJSON* arrayObj, void* arrayPtr) {
	cJSON* arrayItem = nullptr;
	int index		 = 0;
	cJSON_ArrayForEach(arrayItem, arrayObj) {
		parseJsonValue(arrayItem, (void*)((char*)arrayPtr + index * sizeof(arrayItem->valueint)));
		index++;
	}
}

void JsonRead::jsonRead(const char* filename) {
	cJSON* json = loadFromFile(filename);

	if (!json) {
		Crash("Failed to load JSON from file: %s", filename);
		return;
	}

	size_t size = mCodec.size();
	for (size_t i = 0; i < size; i++) {
		if (!mCodec[i].key) {
			Crash("No key provided in JsonValue\nCodec Size: %zu\nValue reference: %p\n Key: %s", size, mCodec[i].dataRef, mCodec[i].key);
			continue;
		}

		cJSON* obj = getNestedObject(json, mCodec[i].key);
		if (!obj) {
			Crash("Could not get json key: %s from file: %s", mCodec[i].key, filename);
			continue;
		}

		parseJsonValue(obj, mCodec[i].dataRef);
	}

	cJSON_Delete(json);
}
cJSON* JsonRead::getNestedObject(cJSON* root, const char* nestedKey) {
	cJSON* current		= root;
	const char* pos		= nestedKey;
	const char* prevPos = nestedKey;

	while ((pos = strchr(prevPos, '.')) != nullptr) {
		// Extract key segment
		char keySegment[256];
		size_t length = pos - prevPos;
		strncpy(keySegment, prevPos, length);
		keySegment[length] = '\0';

		// Check if the current segment is an array index
		if (isdigit(keySegment[0])) {
			int arrayIndex = atoi(keySegment);
			current		   = cJSON_GetArrayItem(current, arrayIndex);
			if (!current) {
				Crash("Returned nullptr for array index: %d", arrayIndex);
				return nullptr;
			}
		} else {
			// Navigate to the next object key
			current = cJSON_GetObjectItemCaseSensitive(current, keySegment);
			if (!current) {
				Crash("Returned nullptr for key segment: %s\nkey: %s\nprevPos: %s", keySegment, nestedKey, prevPos);
				return nullptr;
			}
		}

		// Move to the next segment
		prevPos = pos + 1;
	}

	// Handle the last segment (could be an array index or object key)
	if (isdigit(prevPos[0])) {
		int arrayIndex = atoi(prevPos);
		current		   = cJSON_GetArrayItem(current, arrayIndex);
		if (!current) {
			Crash("Returned nullptr for array index: %d", arrayIndex);
			return nullptr;
		}
	} else {
		current = cJSON_GetObjectItemCaseSensitive(current, prevPos);
		if (!current) {
			Crash("Returned nullptr for key: %s", prevPos);
			return nullptr;
		}
	}

	return current;
}
