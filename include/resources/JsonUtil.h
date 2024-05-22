#include <fstream>
#include <iostream>
#include <nlohmann/json.hpp>
#include <string>

using json = nlohmann::json;

const char* cPathRoot = "sdmc:/craft/";

// JSONSerializable interface
class JSONSerializable {
	public:
		virtual ~JSONSerializable() {}
		virtual json toJSON() const					= 0;
		virtual void fromJSON(const json& jsonData) = 0;
};

// JSONFileHandler for reading/writing JSON files
class JSONFileHandler {
	public:
		static json readFromFile(const std::string& filename) {
			std::ifstream inputFile(cPathRoot + filename);
			if (!inputFile.is_open()) {
				printf("Unable to open file: %s", filename.c_str());
			}

			json jsonData;
			inputFile >> jsonData;
			inputFile.close();

			return jsonData;
		}

		static void writeToFile(const json& jsonData, const std::string& filename) {
			std::ofstream outputFile(cPathRoot + filename);
			if (!outputFile.is_open()) {
				printf("Unable to write file: %s", filename.c_str());
			}

			outputFile << std::setw(4) << jsonData << std::endl;
			outputFile.close();
		}
};

// JSONObject class for handling JSON objects
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

		bool hasKey(const std::string& key) const { return true /*data.find(key) != data.end()*/; }

		friend std::ostream& operator<<(std::ostream& os, const JSONObject& obj) {
			os << obj.data.dump(4);
			return os;
		}
};