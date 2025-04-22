-- create the database 
CREATE DATABASE ecommercedb;
-- use the database
Use ecommercedb;

-- Create the brand table
CREATE TABLE brand (
    brandID INT PRIMARY KEY AUTO_INCREMENT,
    brandName VARCHAR(255) NOT NULL
);
-- create product_category table
CREATE TABLE product_category (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(255) NOT NULL,
    description TEXT
);