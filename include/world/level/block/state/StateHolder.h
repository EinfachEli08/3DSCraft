#pragma once

#include "vector/vector.h"	// Assuming this is your custom vector implementation
#include "world/level/block/state/properties/Property.h"
#include <cstdio>
#include <string>

template <typename O, typename S>
class StateHolder {
	public:
		template <typename T>
		StateHolder(O instance, const vector<Property<T>>& properties);

		~StateHolder();

		template <typename T>
		void setValue(const Property<T>& property, T value);

		template <typename T>
		T getValue(const Property<T>& property) const;

		std::string toString() const;

	private:
		O instance;
		vector<void*> properties;	   // vector of void pointers to handle different types
		vector<void*> propertyValues;  // vector of void pointers to handle different types

		bool isAllowedValue(void* property, void* value) const;	 // Compare pointers directly
};