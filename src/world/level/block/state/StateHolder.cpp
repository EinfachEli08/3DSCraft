#include "world/level/block/state/StateHolder.h"

template <typename O, typename S>
template <typename T>
StateHolder<O, S>::StateHolder(O instance, const vector<Property<T>>& properties)
	: instance(instance), properties(properties.size()), propertyValues(properties.size()) {
	for (size_t i = 0; i < properties.size(); ++i) {
		this->properties[i] = static_cast<void*>(const_cast<Property<T>*>(&properties[i]));
		// Initialize propertyValues with default values based on Property<T>
		// For simplicity, let's assume Property<T> has a method called getDefault() to get the default value
		this->propertyValues[i] = static_cast<void*>(new T(properties[i].getDefault()));
	}
}

template <typename O, typename S>
StateHolder<O, S>::~StateHolder() {
	// Deallocate memory for propertyValues
	for (void* value : propertyValues) {
		delete value;
	}
}

template <typename O, typename S>
template <typename T>
void StateHolder<O, S>::setValue(const Property<T>& property, T value) {
	for (size_t i = 0; i < properties.size(); ++i) {
		if (properties[i] == static_cast<void*>(const_cast<Property<T>*>(&property))) {
			if (isAllowedValue(properties[i], static_cast<void*>(&value))) {
				*static_cast<T*>(propertyValues[i]) = value;
				return;
			} else {
				printf("Invalid property value for property %s\n", property.getName().c_str());
				return;
			}
		}
	}
	printf("Property not found: %s\n", property.getName().c_str());
}

template <typename O, typename S>
template <typename T>
T StateHolder<O, S>::getValue(const Property<T>& property) const {
	for (size_t i = 0; i < properties.size(); ++i) {
		if (properties[i] == static_cast<void*>(const_cast<Property<T>*>(&property))) {
			return *static_cast<T*>(propertyValues[i]);
		}
	}
	printf("Property not found: %s\n", property.getName().c_str());
	return T{};	 // Return a default value for T
}

template <typename O, typename S>
std::string StateHolder<O, S>::toString() const {
	std::string result = "Instance: " + std::to_string(instance) + "\nProperties:\n";
	for (size_t i = 0; i < properties.size(); ++i) {
		// Assuming Property<T> has a method called toString() to convert the property value to string
		result += static_cast<PropertyBase*>(properties[i])->getName() + " = " +
				  static_cast<PropertyBase*>(properties[i])->toString(*propertyValues[i]) + "\n";
	}
	return result;
}

template <typename O, typename S>
bool StateHolder<O, S>::isAllowedValue(void* property, void* value) const {
	// Implement this function to check if the value is allowed for the given property
	return true;  // Placeholder implementation
}
