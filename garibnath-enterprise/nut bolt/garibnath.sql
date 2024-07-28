-- Create database
CREATE DATABASE garibnath_stock;

-- Use the created database
USE garibnath_stock;

-- Create the nut_bolt table
CREATE TABLE nut_bolt (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    v_qty INT NOT NULL,
    g_qty INT NOT NULL,
    rate DECIMAL(10, 2) NOT NULL
);
