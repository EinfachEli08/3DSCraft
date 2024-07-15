#pragma once

#include "Property.h"

template <typename T>
class PropertyHolder {
		const Property<T>* mProperty;
		T mValue;

	public:
		PropertyHolder(Property<T> property, T value) : mProperty(property), mValue(value) {}

		const Property<T> getProperty() const { return mProperty; }

		void set(T& value) { mValue = value; }
		T* get() const { return &mValue; }
};
