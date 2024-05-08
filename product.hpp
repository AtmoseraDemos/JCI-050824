// Product.hpp
#ifndef PRODUCT_H
#define PRODUCT_H

#include <string>

class Product {
private:
    int m_id;
    std::string m_name;
    double m_price;
    time_t m_created_at;
    time_t m_updated_at;

public:
    // Getters
    int getId() const;
    std::string getName() const;
    double getPrice() const;
    time_t getCreatedAt() const;
    time_t getUpdatedAt() const;

    // Setters
    void setId(int id);
    void setName(const std::string &name);
    void setPrice(double price);
    void setCreatedAt(time_t createdAt);
    void setUpdatedAt(time_t updatedAt);
};

#endif // PRODUCT_H