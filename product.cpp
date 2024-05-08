// Product.cpp
#include "Product.hpp"

// Getters
int Product::getId() const {
    return m_id;
}

std::string Product::getName() const {
    return m_name;
}

double Product::getPrice() const {
    return m_price;
}

time_t Product::getCreatedAt() const {
    return m_created_at;
}

time_t Product::getUpdatedAt() const {
    return m_updated_at;
}

// Setters
void Product::setId(int id) {
    m_id = id;
}

void Product::setName(const std::string &name) {
    m_name = name;
}

void Product::setPrice(double price) {
    m_price = price;
}

void Product::setCreatedAt(time_t createdAt) {
    m_created_at = createdAt;
}

void Product::setUpdatedAt(time_t updatedAt) {
    m_updated_at = updatedAt;
}
