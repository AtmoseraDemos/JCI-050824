"""
This file contains a Python 3 model of a product as defined in the 'inventory' database.
"""

# Import the necessary modules
import re


# define the class Product
class Product:
    """
    This class represents a product in the inventory database.
    """
    MIN_PRICE = 100
    MAX_PRICE = 1000

    # Define the constructor
    def __init__(self, product_id, name, price, quantity):
        """
        Initializes the product with the given product_id, name, price, and quantity.
        """
        self.product_id = product_id
        self.name = name
        self.price = price
        self.quantity = quantity

    # Define the __str__ method
    def __str__(self):
        """
        Returns a string representation of the product.
        """
        return f"Product ID: {self.product_id}, Name: {self.name}, Price: {self.price}, Quantity: {self.quantity}"

    # Define the __eq__ method
    def __eq__(self, other):
        """
        Returns True if the product is equal to the other product, False otherwise.
        """
        return self.product_id == other.product_id

    # Define the __lt__ method
    def __lt__(self, other):
        """
        Returns True if the product is less than the other product, False otherwise.
        """
        return self.product_id < other.product_id

    # Define the __gt__ method
    def __gt__(self, other):
        """
        Returns True if the product is greater than the other product, False otherwise.
        """
        return self.product_id > other.product_id

    # Define the __le__ method
    def __le__(self, other):
        """
        Returns True if the product is less than or equal to the other product, False otherwise.
        """
        return self.product_id <= other.product_id

    # Define the __ge__ method
    def __ge__(self, other):
        """
        Returns True if the product is greater than or equal to the other product, False otherwise.
        """
        return self.product_id >= other.product_id

    # Define the __ne__ method
    def __ne__(self, other):
        """
        Returns True if the product is not equal to the other product, False otherwise.
        """
        return self.product_id != other.product_id

    # Define the __hash__ method
    def __hash__(self):
        """
        Returns the hash value of the product.
        """
        return hash(self.product_id)

    # Define the get_product_id method
    def get_product_id(self):
        """
        Returns the product_id of the product.
        """
        return self.product_id
    
    # define a method 'set_price' to set the price of the product
    def set_price(self, price):
        """
        Sets the price of the product.
        """
        if price < Product.MIN_PRICE or price > Product.MAX_PRICE:
            raise ValueError(f"Price must be between {Product.MIN_PRICE} and {Product.MAX_PRICE}")
        self.price = price

