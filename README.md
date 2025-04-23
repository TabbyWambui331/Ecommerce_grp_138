E-commerce Database Design

**Overview**

This is a full MySQL database schema for an e-commerce site, created to handle complex product variations, attributes, categories, and inventory. The schema supports modern e-commerce requirements like multi-variant products, complex attribute systems, and flexible categorization.

**Features**
**Core Tables**
brand - Stores brand information

product_category - Categorizes products by hierarchy

product - Base product information

product_item - Variants of the product (size, color selection)

**Variation Management**
color - Color selections

size_category - Sizes categorized by type (shirt, shoes)

size_option - Individual size (S, M, L, 42)

product_variation - Identifies variation types for the product



**Installation**
Clone this repository

Execute the SQL script in your MySQL environment
**Usage**

**Contributing**
Contributions are welcome from you! Could you submit a pull request for any improvements?
**Licence**
This project is licensed under the MIT License. See the LICENSE file for details.
(https://mit-license.org/)

