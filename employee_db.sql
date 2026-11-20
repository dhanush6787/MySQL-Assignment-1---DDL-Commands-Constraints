CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id   INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id   INT PRIMARY KEY,
    location_name VARCHAR(30)
);
CREATE TABLE Employees (
    employee_id   INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender        ENUM('M','F'),
    age           INT,
    hire_date     DATE,
    designation   VARCHAR(100),
    salary        DECIMAL(10,2),
    department_id INT,
    location_id   INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id)   REFERENCES Location(location_id)
);

INSERT INTO Departments VALUES (1,'HR'),(2,'Finance'),(3,'IT');
INSERT INTO Location VALUES (1,'Chennai'),(2,'Bangalore');
INSERT INTO Employees VALUES
(101,'Arun','M',28,'2022-04-10','Analyst',45000.00,3,1),
(102,'Priya','F',32,'2020-01-15','Manager',80000.00,2,2);
SELECT * FROM Employees;
ALTER TABLE Employees ADD COLUMN email VARCHAR(100);
ALTER TABLE Employees MODIFY COLUMN designation VARCHAR(255);
ALTER TABLE Employees DROP COLUMN age;
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining;
DESCRIBE Employees;



RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
SHOW TABLES;

TRUNCATE TABLE Employees;
SELECT * FROM Employees;

DROP TABLE Employees;
DROP DATABASE employee;
SHOW DATABASES;

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id   INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id   INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id   INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender        ENUM('M','F'),
    age           INT,
    hire_date     DATE DEFAULT (CURRENT_DATE),
    designation   VARCHAR(100),
    salary        DECIMAL(10,2),
    department_id INT,
    location_id   INT,
    CONSTRAINT chk_age CHECK (age >= 18),
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    CONSTRAINT fk_location FOREIGN KEY (location_id) REFERENCES Location(location_id)
);

SHOW CREATE TABLE Departments;
SHOW CREATE TABLE Location;
SHOW CREATE TABLE Employees;

INSERT INTO Departments VALUES (1,'HR'),(2,'IT');
INSERT INTO Location (location_name) VALUES ('Chennai'),('Bangalore');
SELECT * FROM Location;


INSERT INTO Departments VALUES (3,'HR');

INSERT INTO Departments VALUES (4,NULL);