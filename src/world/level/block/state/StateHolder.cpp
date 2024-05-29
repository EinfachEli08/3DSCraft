#include "world/level/block/state/StateHolder.h"

// Property member functions
template <typename T>
Property<T>::Property(const std::string& name, T* allowedValues, size_t allowedValueCount)
	: name(name), allowedValues(allowedValues), allowedValueCount(allowedValueCount) {
}

template <typename T>
const std::string& Property<T>::getName() const {
	return name;
}

template <typename T>
const T* Property<T>::getAllowedValues() const {
	return allowedValues;
}

template <typename T>
size_t Property<T>::getAllowedValueCount() const {
	return allowedValueCount;
}

// StateHolder member functions
template <typename O, typename S>
StateHolder<O, S>::StateHolder(O instance, Property<int>** properties, size_t propertyCount)
	: instance(instance), properties(properties), propertyCount(propertyCount) {
	propertyValues = new int[propertyCount];
	for (size_t i = 0; i < propertyCount; ++i) {
		propertyValues[i] = properties[i]->getAllowedValues()[0];
	}
}

template <typename O, typename S>
StateHolder<O, S>::~StateHolder() {
	delete[] propertyValues;
}

template <typename O, typename S>
void StateHolder<O, S>::setProperty(Property<int>& property, int value) {
	for (size_t i = 0; i < propertyCount; ++i) {
		if (properties[i] == &property) {
			if (isAllowedValue(property, value)) {
				propertyValues[i] = value;
				return;
			} else {
				printf("Invalid property value: %d for property %s\n", value, property.getName().c_str());
				return;
			}
		}
	}
	printf("Property not found: %s\n", property.getName().c_str());
}

template <typename O, typename S>
int StateHolder<O, S>::getProperty(Property<int>& property) const {
	for (size_t i = 0; i < propertyCount; ++i) {
		if (properties[i] == &property) {
			return propertyValues[i];
		}
	}
	printf("Property not found: %s\n", property.getName().c_str());
	return -1;	// Return a default error value
}

template <typename O, typename S>
void StateHolder<O, S>::toString(char* buffer, size_t bufferSize) const {
	std::string result = "Instance: " + std::to_string(instance) + "\nProperties:\n";
	for (size_t i = 0; i < propertyCount; ++i) {
		result += properties[i]->getName() + " = " + std::to_string(propertyValues[i]) + "\n";
	}
	std::snprintf(buffer, bufferSize, "%s", result.c_str());
}

template <typename O, typename S>
bool StateHolder<O, S>::isAllowedValue(const Property<int>& property, int value) const {
	const int* allowedValues = property.getAllowedValues();
	size_t allowedValueCount = property.getAllowedValueCount();
	for (size_t i = 0; i < allowedValueCount; ++i) {
		if (allowedValues[i] == value) {
			return true;
		}
	}
	return false;
}
