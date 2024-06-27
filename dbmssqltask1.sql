-- Drop the database if it exists
DROP DATABASE IF EXISTS inventorydb;

-- Create the database
CREATE DATABASE inventorydb;

-- Switch to the new database
USE inventorydb;

-- Create the product table
CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    price DECIMAL(10, 2),
    quantity INT,
    category VARCHAR(255)
);

-- Insert sample products
INSERT INTO product (name, description, price, quantity, category) VALUES 
('Laptop', 'A high-performance laptop suitable for all your computing needs.', 999.99, 50, 'Electronics'),
('Desk Chair', 'Ergonomic desk chair with lumbar support.', 149.99, 200, 'Furniture'),
('Running Shoes', 'Comfortable running shoes with excellent grip.', 79.99, 150, 'Footwear'),
('Smartphone', 'Latest model smartphone with cutting-edge features.', 699.99, 75, 'Electronics'),
('Blender', 'High-speed blender for smoothies and soups.', 89.99, 100, 'Kitchen Appliances');
-- Select all records from the product table
SELECT * FROM product;

-- Select products where the price is greater than or equal to 100
SELECT * FROM product WHERE price >= 100;

-- Select products where the price is less than or equal to 700
SELECT * FROM product WHERE price <= 700;

-- Select products where the quantity is greater than or equal to 100
SELECT * FROM product WHERE quantity >= 100;

-- Update the price of 'Running Shoes' to 80.00
UPDATE product SET price = 80.00 WHERE name = 'Running Shoes';

-- Delete the product where the name is 'Laptop'
DELETE FROM product WHERE name = 'Laptop';

