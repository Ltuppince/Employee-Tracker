 DROP DATABASE IF EXISTS employee_tracker;
create database employee_tracker;

use employee_tracker; 

CREATE TABLE department (
	id INTEGER NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
    );
    
CREATE TABLE role (
	id INTEGER NOT NULL,
	title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER NOT NULL,
    PRIMARY KEY(id)
    );
    
CREATE TABLE employee (
	id INTEGER NOT NULL,
	first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER NOT NULL,
    manager_id INTEGER NOT NULL,
    PRIMARY KEY(id)
);    
    
 ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY ''  