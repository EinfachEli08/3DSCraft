#pragma once

#include <cstdio>
#include <string>
#include <vector>

template <typename T>
class Property {
	public:
		Property(const std::string& name, T* allowedValues, size_t allowedValueCount);

		const std::string& getName() const;
		const T* getAllowedValues() const;
		size_t getAllowedValueCount() const;

	private:
		std::string name;
		T* allowedValues;
		size_t allowedValueCount;
};

template <typename O, typename S>
class StateHolder {
	public:
		StateHolder(O instance, Property<int>** properties, size_t propertyCount);
		~StateHolder();

		void setProperty(Property<int>& property, int value);
		int getProperty(Property<int>& property) const;
		void toString(char* buffer, size_t bufferSize) const;

	private:
		O instance;
		Property<int>** properties;
		int* propertyValues;
		size_t propertyCount;

		bool isAllowedValue(const Property<int>& property, int value) const;
};