#pragma once

#include <vector>
#include <utility>

class ResourceScheme {
public:
    std::vector<std::pair<const char*, const char*>> fields;

    void addField(const char* fieldName, const char* fieldType) {
        fields.push_back(std::make_pair(fieldName, fieldType));
    }
};
