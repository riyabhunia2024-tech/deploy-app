-- Create Database
CREATE DATABASE IF NOT EXISTS studentdb;

-- Use Database
USE studentdb;

-- Create Table
CREATE TABLE IF NOT EXISTS students (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    course VARCHAR(100)
);

-- Sample Data
INSERT INTO students (name, email, course)
VALUES
('Riya', 'riya@gmail.com', 'Computer Science'),
('Rahul', 'rahul@gmail.com', 'DevOps');