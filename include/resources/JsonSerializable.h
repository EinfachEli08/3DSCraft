#pragma once

#include <nlohmann/json.hpp>

using json = nlohmann::json;

class JSONSerializable {
	public:
		virtual ~JSONSerializable() {}
		virtual json toJSON() const			= 0;
		virtual std::string getName() const = 0;  // Assuming each serializable object has a name
};
