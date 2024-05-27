#pragma once

#include <fstream>
#include <iostream>
#include <memory>
#include <nlohmann/json.hpp>
#include <string>
#include <unordered_map>

#include "util/Paths.h"

using json = nlohmann::json;

class JSONFileHandler {
	public:
		static json readFromFile(const std::string& filename) {
			std::ifstream inputFile(Path::root + filename);
			if (!inputFile.is_open()) {
				printf("Unable to open file: %s\n", filename.c_str());
				return json();
			}

			json jsonData;
			inputFile >> jsonData;
			inputFile.close();

			return jsonData;
		}

		static void writeToFile(const json& jsonData, const std::string& filename) {
			std::ofstream outputFile(Path::root + filename);
			if (!outputFile.is_open()) {
				printf("Unable to write file: %s\n", filename.c_str());
				return;
			}

			outputFile << std::setw(4) << jsonData << std::endl;
			outputFile.close();
		}
};
