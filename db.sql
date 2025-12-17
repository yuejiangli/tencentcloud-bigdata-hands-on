create database demo;

-- Create the user table
CREATE TABLE t_user (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    registration_date DATE
);

-- Create the product table
CREATE TABLE t_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create the order table
CREATE TABLE t_order (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (user_id) REFERENCES t_user(user_id),
    FOREIGN KEY (product_id) REFERENCES t_product(product_id)
);

-- Inserting data into the t_user table
INSERT INTO demo.t_user (user_id, user_name, registration_date) VALUES
(1, 'User1', '2024-07-01'),
(2, 'User2', '2024-07-02'),
(3, 'User3', '2024-07-03');

-- Inserting data into the t_product table
INSERT INTO demo.t_product (product_id, product_name, category, price) VALUES
(1, 'Product1', 'Category1', 10.00),
(2, 'Product2', 'Category2', 20.00),
(3, 'Product3', 'Category3', 30.00);

-- Inserting data into the t_order table
INSERT INTO demo.t_order (order_id, user_id, product_id, order_date, quantity) VALUES
(1, 1, 1, '2024-07-01', 2),
(2, 1, 2, '2024-07-01', 1),
(3, 2, 1, '2024-07-02', 3),
(4, 3, 3, '2024-07-02', 1);
