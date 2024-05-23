#pragma once

#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <unordered_map>

#include "resources/JsonSerializable.h"

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

class JSONObject : public JSONSerializable {
	private:
		json data;

	public:
		JSONObject() {}

		JSONObject(const json& jsonData) : data(jsonData) {}

		json toJSON() const override { return data; }

		void fromJSON(const json& jsonData) override { data = jsonData; }

		template <typename T>
		void set(const std::string& key, const T& value) {
			data[key] = value;
		}

		template <typename T>
		T get(const std::string& key) const {
			return data.at(key).get<T>();
		}

		bool hasKey(const std::string& key) const { return /*data.find(key) != data.end()*/ true; }

		friend std::ostream& operator<<(std::ostream& os, const JSONObject& obj) {
			os << obj.data.dump(4);
			return os;
		}
};
