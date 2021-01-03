DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
  -- CREATE id, name COLUMNS
  id INT not null auto_increment PRIMARY KEY ,
  department VARCHAR(30) not null,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT not null auto_increment PRIMARY KEY,
  title VARCHAR(30) not null,
  salary DECIMAL(10,2) null,
  department_id INT null,
  FOREIGN KEY (department_id) REFERENCES department(id) on delete cascade 
);

CREATE TABLE employee (
 id INT not null auto_increment PRIMARY KEY,
 first_name VARCHAR(30) not null,
 last_name VARCHAR(30) not null,
 role_id INT not null,
 manager_id INT null,
 FOREIGN KEY (role_id) REFERENCES role(id) on delete cascade, 
 FOREIGN KEY (manager_id) REFERENCES employee(id) on delete cascade
);
