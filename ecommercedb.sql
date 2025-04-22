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

-- create product table
CREATE TABLE product (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(255) NOT NULL,
    brandID INT,
    categoryID INT,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (brandID) REFERENCES brand(brandID),
    FOREIGN KEY (categoryID) REFERENCES product_category(categoryID)
);
-- create product_ variation table
CREATE TABLE product_variation (
    variationID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT,
    variationName  VARCHAR(50),
    FOREIGN KEY (productID) REFERENCES product(productID)
);