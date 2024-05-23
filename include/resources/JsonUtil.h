#pragma once

#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <unordered_map>

const char* cPathRoot = "sdmc:/craft/";

class JSONFileHandler {
	public:
		static json readFromFile(const std::string& filename) {
			std::ifstream inputFile(cPathRoot + filename);
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
			std::ofstream outputFile(cPathRoot + filename);
			if (!outputFile.is_open()) {
				printf("Unable to write file: %s\n", filename.c_str());
				return;
			}

			outputFile << std::setw(4) << jsonData << std::endl;
			outputFile.close();
		}
};
