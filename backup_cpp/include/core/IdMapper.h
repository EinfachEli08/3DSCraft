#pragma once

#include "core/IdMap.h"

template <typename T>
class IdMapper : public IdMap<T> {
	private:
		int nextId;
		T** idToT;
		int* tToId;
		int capacity;

	public:
		IdMapper(int expectedSize = 512) : nextId(0), capacity(expectedSize) {
			idToT = new T*[capacity];
			tToId = new int[capacity];
			for (int i = 0; i < capacity; ++i) {
				idToT[i] = nullptr;
				tToId[i] = IdMap<T>::DEFAULT;
			}
		}

		~IdMapper() {
			delete[] idToT;
			delete[] tToId;
		}

		void addMapping(T* value, int id) {
			if (id >= capacity) {
				// Simple reallocation to handle larger ids
				int newCapacity = id + 1;
				T** newIdToT	= new T*[newCapacity];
				int* newTToId	= new int[newCapacity];

				for (int i = 0; i < newCapacity; ++i) {
					newIdToT[i] = (i < capacity) ? idToT[i] : nullptr;
					newTToId[i] = (i < capacity) ? tToId[i] : IdMap<T>::DEFAULT;
				}

				delete[] idToT;
				delete[] tToId;

				idToT	 = newIdToT;
				tToId	 = newTToId;
				capacity = newCapacity;
			}

			tToId[id] = id;
			idToT[id] = value;

			if (nextId <= id) {
				nextId = id + 1;
			}
		}

		void add(T* value) { addMapping(value, nextId); }

		int getId(const T& value) const override {
			for (int i = 0; i < capacity; ++i) {
				if (idToT[i] != nullptr && *idToT[i] == value) {
					return tToId[i];
				}
			}
			return IdMap<T>::DEFAULT;
		}

		T* byId(int id) const override {
			if (id >= 0 && id < capacity) {
				return idToT[id];
			}
			return nullptr;
		}

		int size() const override {
			int count = 0;
			for (int i = 0; i < capacity; ++i) {
				if (idToT[i] != nullptr) {
					count++;
				}
			}
			return count;
		}

		bool contains(int id) const { return byId(id) != nullptr; }
};
