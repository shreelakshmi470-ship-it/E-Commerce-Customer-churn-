create database EMPLOYEES;
Use EMPLOYEES;
CREATE TABLE EMPLOYEES (
    Department VARCHAR(30),
    Location VARCHAR(30),
    Employee VARCHAR(15),
    Designation varchar(10),
    Age INT
);

ALTER TABLE Employees 
ADD email VARCHAR(255);

ALTER TABLE Employees
MODIFY COLUMN designation VARCHAR(150) NOT NULL;

ALTER TABLE Employees 
DROP COLUMN age;

ALTER TABLE Employees
ADD hire_date date;

ALTER TABLE Employees 
RENAME COLUMN hire_date TO date_of_joining;

ALTER TABLE Employees
RENAME column Department TO Departments_Info;

ALTER TABLE Employees
RENAME column Location TO Locations;

TRUNCATE TABLE Employees;

DROP TABLE Employees;
DROP DATABASE Employees;

CREATE TABLE Department (
    department_id INT NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (department_id)
);

ALTER TABLE department 
MODIFY department_name VARCHAR(100) NOT NULL UNIQUE;


CREATE TABLE locations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

ALTER TABLE locations 
ADD location_name VARCHAR(255);

ALTER TABLE locations 
MODIFY COLUMN location_name VARCHAR(255) NOT NULL;

ALTER TABLE employees 
ADD employee_id int;

ALTER TABLE employees 
ADD PRIMARY KEY (employee_id);

ALTER TABLE employees 
MODIFY COLUMN Employee VARCHAR(15) NOT NULL;

ALTER TABLE Employees 
ADD Gender VARCHAR(255);

ALTER TABLE employees 
ADD CONSTRAINT chk_gender CHECK (gender IN ('M', 'F'));

select * from employees where Age>18;

ALTER TABLE employees 
ALTER COLUMN date_of_joining SET DEFAULT (CURRENT_DATE);

ALTER TABLE locations 
add location_id int;



