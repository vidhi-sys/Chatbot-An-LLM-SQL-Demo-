
CREATE DATABASE sweet_shop;

USE sweet_shop;

-- Create the 'sweets' table
CREATE TABLE sweets (
    sweet_name VARCHAR(255) PRIMARY KEY,
    sweet_type ENUM('Cupcake', 'Cookie', 'Brownie', 'Cake Pop', 'Macaron') NOT NULL,
    quantity_in_stock INT NOT NULL,
    price DECIMAL(5, 2) NOT NULL,
    sweetness DECIMAL(2, 1) NOT NULL,
    freshness DECIMAL(2, 1) NOT NULL CHECK (freshness >= 0 AND freshness <= 10)
);

-- Insert sample data into the 'sweets' table
INSERT INTO sweets (sweet_name, sweet_type, quantity_in_stock, price, sweetness, freshness) VALUES
('Chocolate Lava Cupcake', 'Cupcake', 50, 3.50, 8.5, 9.2),
('Oatmeal Raisin Cookie', 'Cookie', 75, 2.00, 6.0, 8.8),
('Fudgy Walnut Brownie', 'Brownie', 40, 4.00, 9.0, 9.5),
('Red Velvet Cake Pop', 'Cake Pop', 60, 2.50, 7.5, 9.0),
('Pistachio Macaron', 'Macaron', 80, 1.75, 7.0, 9.8);

-- Create the 'special_orders' table to track custom requests
CREATE TABLE special_orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    sweet_name VARCHAR(255),
    quantity INT NOT NULL,
    order_date DATE NOT NULL,
    pickup_date DATE NOT NULL,
    instructions TEXT,
    FOREIGN KEY (sweet_name) REFERENCES sweets(sweet_name)
);

-- Insert sample data into the 'special_orders' table
INSERT INTO special_orders (customer_name, sweet_name, quantity, order_date, pickup_date, instructions) VALUES
('Jane Doe', 'Chocolate Lava Cupcake', 24, '2024-10-26', '2024-10-29', 'Include a "Happy Birthday" note.'),
('John Smith', 'Pistachio Macaron', 50, '2024-10-27', '2024-10-30', 'Tie with a ribbon, no box.'),
('Emily White', NULL, 1, '2024-10-28', '2024-10-31', 'Custom cake: 3-tier vanilla, frosting with blue flowers.');

-- Create the 'discounts' table to track discounts applied to orders
CREATE TABLE discounts (
    discount_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    discount_type ENUM('Percentage', 'Fixed Amount') NOT NULL,
    discount_value DECIMAL(5, 2) NOT NULL,
    description VARCHAR(255),
    FOREIGN KEY (order_id) REFERENCES special_orders(order_id)
);

-- Insert sample data into the 'discounts' table
INSERT INTO discounts (order_id, discount_type, discount_value, description) VALUES
(1, 'Percentage', 10.00, 'Loyalty discount for a large order.'),
(2, 'Fixed Amount', 5.00, 'Promotional discount.');
