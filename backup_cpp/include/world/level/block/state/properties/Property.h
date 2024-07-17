#pragma once

#include "vector/vector.h"
#include <string>

template <typename T>
class Property {
	protected:
		const char* mName;
		T mValue;
		vector<T> mValues;

	public:
		Property(const char* name) : mName(name) {}

		struct Value {
				Property<T>& mProperty;
				T mValue;

				Value(Property<T>& property, const T& value) : mProperty(property), mValue(value) {}

				std::string toString() const { return mProperty.getName() + "=" + mProperty.getName(mValue); }
		};

		T operator==(const Property& other) {
			if (this == &other)
				return true;

			return mName == other.mName;
		}

		virtual T getValue() const { return mValue; }
		const char* getName() const { return mName; }
		vector<int> getPossibleValues() const { return mValues; }
};
