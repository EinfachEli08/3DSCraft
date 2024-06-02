#pragma once

#include "world/level/block/state/properties/PropertyHolder.h"
#include <cstdio>
#include <string>
#include <vector/vector.h>

template <typename O, typename S>
class StateHolder {
	public:
		template <typename T>
		StateHolder(O owner, const vector<PropertyHolder<T>>& values);

		std::string toString() const;
		template <typename T>
		vector<Property<T>*> getProperties() {
			return values;
		}
		template <typename T>
		bool hasProperty(const Property<T>* property) {
			for (PropertyHolder<T> prop : values) {
				if (prop.getProperty() == property)
					return true;
			}

			return false;
		}
		template <typename T>
		T* getValue(const Property<T>* property) const {
			for (PropertyHolder<T> prop : values) {
				if (prop.getProperty() == property)
					return prop.get();
			}
			return nullptr;
		}
		template <typename T>

		template <typename T>
		void setValue(const Property<T>* property, T value);

	private:
		template <typename T>
		vector<PropertyHolder<T>> values;
		template <typename T>
		vector<PropertyHolder<T>*> neighbors;

	protected:
		O owner;

		template <typename T>
		static T findNextInCollection(vector<T> collection, T val) {
			for (int i = 0; i < collection.size(); ++i) {
				if (T == collection[i])
					return collection[++i];
			}
		}
};