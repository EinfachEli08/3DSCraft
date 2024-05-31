#pragma once

// https://github.com/sigerror/fast-vector

#include <cassert>
#include <cstdlib>
#include <cstring> // std::memcpy()
#include <new>
#include <type_traits>

// Helper functions

template <class T>
inline void construct_range(T* begin, T* end)
{
    while (begin != end)
    {
        new (begin) T;
        begin++;
    }
}

template <class T>
inline void copy_range(T* begin, T* end, T* dest)
{
    while (begin != end)
    {
        new (dest) T(*begin);
        begin++;
        dest++;
    }
}

template <class T>
inline void destruct_range(T* begin, T* end)
{
    while (begin != end)
    {
        begin->~T();
        begin++;
    }
}

template <class T>
class vector
{
public:
    using size_type = std::size_t;

    vector() = default;
    vector(const vector& other);
    vector(vector&& other) noexcept;
    vector& operator=(const vector& other);
    vector& operator=(vector&& other) noexcept;
    ~vector();

    // Element access

    T& operator[](size_type pos);
    const T& operator[](size_type pos) const;

    T& front();
    const T& front() const;

    T& back();
    const T& back() const;

    T* data() noexcept;
    const T* data() const noexcept;

    // Iterators

    T* begin() noexcept;
    const T* begin() const noexcept;

    T* end() noexcept;
    const T* end() const noexcept;

    // Capacity

    bool empty() const noexcept;
    size_type size() const noexcept;
    void reserve(size_type new_cap);
    size_type capacity() const noexcept;
    void shrink_to_fit();

    // Modifiers

    void clear() noexcept;

    void push_back(const T& value);
    void push_back(T&& value);

    template< class... Args >
    void emplace_back(Args&&... args);
    
    void pop_back();
    void resize(size_type count);

    static constexpr size_type grow_factor = 2;

private:
    T* m_data = nullptr;
    size_type m_size = 0;
    size_type m_capacity = 0;
};

template <class T>
vector<T>::vector(const vector& other)
    : m_size(other.m_size)
    , m_capacity(other.m_capacity)
{
    m_data = reinterpret_cast<T*>(std::malloc(sizeof(T) * other.m_capacity));

    if (std::is_trivial_v<T>)
    {
        std::memcpy(m_data, other.m_data, other.m_size);
    }
    else
    {
        copy_range(other.begin(), other.end(), m_data);
    }
}

template <class T>
vector<T>::vector(vector&& other) noexcept
    : m_data(other.m_data)
    , m_size(other.m_size)
    , m_capacity(other.m_capacity)
{
    other.m_data = nullptr;
}

template <class T>
vector<T>& vector<T>::operator=(const vector& other)
{
    m_size = other.m_size;
    m_capacity = other.m_capacity;

    m_data = reinterpret_cast<T*>(std::malloc(sizeof(T) * other.m_capacity));

    if (std::is_trivial_v<T>)
    {
        std::memcpy(m_data, other.m_data, other.m_size);
    }
    else
    {
        copy_range(other.begin(), other.end(), m_data);
    }

    return *this;
}

template <class T>
vector<T>& vector<T>::operator=(vector&& other) noexcept
{
    m_data = other.m_data;
    m_size = other.m_size;
    m_capacity = other.m_capacity;

    other.m_data = nullptr;

    return *this;
}

template <class T>
vector<T>::~vector()
{
    if (!std::is_trivial_v<T>)
    {
        destruct_range(begin(), end());
    }

    std::free(m_data);
}

// Element access

template <class T>
T& vector<T>::operator[](size_type pos)
{
    assert(pos < m_size && "Position is out of range");
    return m_data[pos];
}

template <class T>
const T& vector<T>::operator[](size_type pos) const
{
    assert(pos < m_size && "Position is out of range");
    return m_data[pos];
}

template <class T>
T& vector<T>::front()
{
    assert(m_size > 0 && "Container is empty");
    return m_data[0];
}

template <class T>
const T& vector<T>::front() const
{
    assert(m_size > 0 && "Container is empty");
    return m_data[0];
}

template <class T>
T& vector<T>::back()
{
    assert(m_size > 0 && "Container is empty");
    return m_data[m_size - 1];
}

template <class T>
const T& vector<T>::back() const
{
    assert(m_size > 0 && "Container is empty");
    return m_data[m_size - 1];
}

template <class T>
T* vector<T>::data() noexcept
{
    return m_data;
}

template <class T>
const T* vector<T>::data() const noexcept
{
    return m_data;
}

// Iterators

template <class T>
T* vector<T>::begin() noexcept
{
    return m_data;
}

template <class T>
const T* vector<T>::begin() const noexcept
{
    return m_data;
}

template <class T>
T* vector<T>::end() noexcept
{
    return m_data + m_size;
}

template <class T>
const T* vector<T>::end() const noexcept
{
    return m_data + m_size;
}

// Capacity

template <class T>
bool vector<T>::empty() const noexcept
{
    return m_size == 0;
}

template <class T>
typename vector<T>::size_type vector<T>::size() const noexcept
{
    return m_size;
}

template <class T>
void vector<T>::reserve(size_type new_cap)
{
    assert(new_cap > m_capacity && "Capacity is already equal to or greater than the passed value");

    if constexpr (std::is_trivial_v<T>)
    {
        m_data = reinterpret_cast<T*>(std::realloc(m_data, sizeof(T) * new_cap));
        assert(m_data != nullptr && "Reallocation failed");
    }
    else
    {
        T* new_data_location = reinterpret_cast<T*>(std::malloc(sizeof(T) * new_cap));
        assert(new_data_location != nullptr && "Allocation failed");

        copy_range(begin(), end(), new_data_location);
        destruct_range(begin(), end());

        std::free(m_data);

        m_data = new_data_location;
    }

    m_capacity = new_cap;
}

template <class T>
typename vector<T>::size_type vector<T>::capacity() const noexcept
{
    return m_capacity;
}

template <class T>
void vector<T>::shrink_to_fit()
{
    if (m_size < m_capacity)
    {
        if constexpr (std::is_trivial_v<T>)
        {
            m_data = reinterpret_cast<T*>(std::realloc(m_data, sizeof(T) * m_size));
            assert(m_data != nullptr && "Reallocation failed");
        }
        else
        {
            T* new_data_location = reinterpret_cast<T*>(std::malloc(sizeof(T) * m_size));
            assert(new_data_location != nullptr && "Allocation failed");

            copy_range(begin(), end(), new_data_location);
            destruct_range(begin(), end());

            std::free(m_data);

            m_data = new_data_location;
        }
    }
}

// Modifiers

template <class T>
void vector<T>::clear() noexcept
{
    if constexpr (!std::is_trivial_v<T>)
    {
        destruct_range(begin(), end());
    }

    m_size = 0;
}

template <class T>
void vector<T>::push_back(const T& value)
{
    if (m_size == m_capacity)
    {
        reserve(m_capacity * vector::grow_factor + 1);
    }

    if constexpr (std::is_trivial_v<T>)
    {
        m_data[m_size] = value;
    }
    else
    {
        new (m_data + m_size) T(value);
    }

    m_size++;
}

template <class T>
void vector<T>::push_back(T&& value)
{
    if (m_size == m_capacity)
    {
        reserve(m_capacity * vector::grow_factor + 1);
    }

    if constexpr (std::is_trivial_v<T>)
    {
        m_data[m_size] = value;
    }
    else
    {
        new (m_data + m_size) T(std::move(value));
    }

    m_size++;
}

template <class T>
template< class... Args >
void vector<T>::emplace_back(Args&&... args)
{
    static_assert(!std::is_trivial_v<T>, "Use push_back() instead of emplace_back() with trivial types");

    if (m_size == m_capacity)
    {
        reserve(m_capacity * vector::grow_factor + 1);
    }

    new (m_data + m_size) T(std::forward<Args>(args)...);

    m_size++;
}

template <class T>
void vector<T>::pop_back()
{
    assert(m_size > 0 && "Container is empty");

    if constexpr (!std::is_trivial_v<T>)
    {
        m_data[m_size - 1].~T();
    }

    m_size--;
}

template <class T>
void vector<T>::resize(size_type count)
{
    assert(count != m_size && "Size is already equal to the passed value");

    if (count > m_capacity)
    {
        reserve(count);
    }

    if constexpr (!std::is_trivial_v<T>)
    {
        if (count > m_size)
        {
            construct_range(m_data + m_size, m_data + count);
        }
        else if (count < m_size)
        {
            destruct_range(m_data + count, m_data + m_size);
        }
    }

    m_size = count;
}