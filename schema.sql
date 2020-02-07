 DROP DATABASE IF EXISTS employee_tracker;
create database employee_tracker;

use employee_tracker; 

CREATE TABLE department (
	id INTEGER NOT NULL auto_increment,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
    );
    
CREATE TABLE role (
	id INTEGER NOT NULL auto_increment,
	title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER NOT NULL,
    PRIMARY KEY(id)
    );
    
CREATE TABLE employee (
	id INTEGER NOT NULL auto_increment,
	first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER NOT NULL,
    manager_id INTEGER NOT NULL,
    PRIMARY KEY(id)
);    

INSERT INTO employee (first_name,last_name,role_id,manager_id) values ('Lorenzo', 'Tuppince', 1, 2240);
INSERT INTO employee (first_name,last_name,role_id,manager_id) values ('Carmen', 'Owen', 2, 2245);
INSERT INTO employee (first_name,last_name,role_id,manager_id) values ('Yuri', 'Tuppince', 3, 2220);
INSERT INTO employee (first_name,last_name,role_id,manager_id) values ('LorenzoJr.', 'Tuppince', 5, 2323);

SELECT * FROM employee;

INSERT INTO role (title, salary,department_id) values ('Developer', 67000, 1);
INSERT INTO role (title, salary,department_id) values ('Intern', 25000, 2);
INSERT INTO role (title, salary,department_id) values ('Clerk', 17000, 3);
INSERT INTO role (title, salary,department_id) values ('Tech', 45000, 2);
INSERT INTO role (title, salary,department_id) values ('Intern', 25000, 4);

SELECT * FROM role;

INSERT INTO department (name) values ('IT');
INSERT INTO department (name) values ('Mens');
INSERT INTO department (name) values ('Shoe');
INSERT INTO department (name) values ('Sports');

SELECT * FROM department;

SELECT employee.first_name,employee.last_name,employee.role_id,employee.manager_id, role.title, role.salary
FROM employee 
INNER JOIN role on employee.role_id=role.id ;

SELECT employee.first_name, employee.last_name, employee.role_id, employee.manager_id, role.title, role.salary, department.name
FROM employee 
INNER JOIN 
role 
on employee.role_id=role.id
LEFT OUTER JOIN
department 
on role.department_id=department.id;





    
 ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Giants.2008'  