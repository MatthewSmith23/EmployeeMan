DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
  -- CREATE id, name COLUMNS
  id INT auto_increment,
  department VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT auto_increment,
  title VARCHAR(30),
  salary DECIMAL(10, 2),
  department_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
 id INT auto_increment,
 first_name VARCHAR(30),
 last_name VARCHAR(30),
 role_id INT,
 manager_id INT,
 PRIMARY KEY (id),
 FOREIGN KEY (role_id) REFERENCES role(id)
);
