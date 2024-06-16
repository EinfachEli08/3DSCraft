#pragma once

#include <cstdio>
#include <nlohmann/json.hpp>
#include <string>
#include <unordered_map>

#include "util/Paths.h"

using json = nlohmann::json;

class ISerialize {
	public:
		static json getJson(const std::string& filename) {
			std::string filePath = Path::root + filename;
			FILE* inputFile		 = fopen(filePath.c_str(), "r");
			if (inputFile == nullptr) {
				printf("Unable to open file: %s\n", filename.c_str());
				return json();
			}

			fseek(inputFile, 0, SEEK_END);
			long fileSize = ftell(inputFile);
			fseek(inputFile, 0, SEEK_SET);

			std::string jsonData;
			jsonData.resize(fileSize);
			fread(&jsonData[0], 1, fileSize, inputFile);
			fclose(inputFile);

			return json::parse(jsonData);
		}

		static void setJson(const std::string& filename, const json& jsonData) {
			std::string filePath = Path::root + filename;
			FILE* outputFile	 = fopen(filePath.c_str(), "w");
			if (outputFile == nullptr) {
				printf("Unable to write file: %s\n", filename.c_str());
				return;
			}

			std::string jsonString = jsonData.dump(4);
			fwrite(jsonString.c_str(), 1, jsonString.size(), outputFile);
			fclose(outputFile);
		}
};