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
-- create color table
CREATE TABLE color (
    colorID INT AUTO_INCREMENT PRIMARY KEY,
    colorName VARCHAR(50) NOT NULL
);
-- size_category table
CREATE TABLE size_category (
    sizeCategoryID INT AUTO_INCREMENT PRIMARY KEY,
    sizeCategoryName VARCHAR(50) NOT NULL
);
-- create size_option table
CREATE TABLE size_option (
    sizeOptionID INT AUTO_INCREMENT PRIMARY KEY,
    sizeCategoryID INT,
    sizeName VARCHAR(50) NOT NULL,
    FOREIGN KEY (sizeCategoryID) REFERENCES size_category(sizeCategoryID)
);
-- create product_item table
CREATE TABLE product_item (
    itemID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT,
    variationID INT,
    colorID INT,
    sizeOptionID INT,
    FOREIGN KEY (productID) REFERENCES product(productID),
    FOREIGN KEY (variationID) REFERENCES product_variation(variationID),
    FOREIGN KEY (colorID) REFERENCES color(colorID),
    FOREIGN KEY (sizeOptionID) REFERENCES size_option(sizeOptionID)
);
-- Create the product_image table
CREATE TABLE product_image (
    imageID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT,
    imageurl VARCHAR(255) NOT NULL,
    FOREIGN KEY (productID) REFERENCES product(productID)
);
-- Create attribute_category table
CREATE TABLE attribute_category (
    attributeID INT AUTO_INCREMENT PRIMARY KEY,
    attributeCategoryName VARCHAR(50) NOT NULL
);

-- create product_attribute table
CREATE TABLE product_attribute (
    productAttributeID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT,
    attributeTypeID INT,
    attributeID INT,
    value VARCHAR(255) NOT NULL,
    FOREIGN KEY (productID) REFERENCES product(productID),
    FOREIGN KEY (attributeID) REFERENCES attribute_category(attributeID),
    FOREIGN KEY (attributeTypeID) REFERENCES attribute_type(attributeTypeID)
);
-- create attribute_type table
CREATE TABLE attribute_type (
    attributeTypeID INT AUTO_INCREMENT PRIMARY KEY,
    attributeTypeName VARCHAR(50) NOT NULL
);