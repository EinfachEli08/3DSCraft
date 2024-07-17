#pragma once

template <typename T>
class IdMap {
	public:
		static const int DEFAULT = -1;

		virtual int getId(const T& value) const = 0;
		virtual T* byId(int id) const			= 0;

		T* byIdOrThrow(int id) const {
			T* value = byId(id);
			if (!value) {
				printf("No value with id %d\n", id);
			}
			return value;
		}

		virtual int size() const = 0;
		virtual ~IdMap()		 = default;
};
