#pragma once

template <typename T>
class IdMap<T> {
	public:
		virtual int size();
		virtual int getId(T object);
		virtual T* byId(int id);
		T* byIdOrThrow(int id) {
			T* t = this.byId(id);
			if (t == nullptr)
				printf("ERROR: No value within id " + id);
			else
				return T;
		}
};