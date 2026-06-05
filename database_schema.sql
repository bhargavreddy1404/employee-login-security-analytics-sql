CREATE DATABASE EmployeeSecurityDB;
USE EmployeeSecurityDB;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    department_id INT,
    role VARCHAR(50),
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);

CREATE TABLE login_logs (
    login_id INT PRIMARY KEY,
    user_id INT,
    login_time DATETIME,
    logout_time DATETIME,
    login_status VARCHAR(20),
    ip_address VARCHAR(20),
    FOREIGN KEY (user_id)
    REFERENCES users(user_id)
);
