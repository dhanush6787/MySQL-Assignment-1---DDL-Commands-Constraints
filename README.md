# MySQL Assignment 1 - DDL Commands & Constraints

**Module 3 - Data Analytics**

## Overview
Employee database (`employee`) with three tables: Departments, Location, Employees.
Covers CREATE, ALTER, RENAME, TRUNCATE, DROP and constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, DEFAULT, AUTO_INCREMENT).

## Files
- `employee_db.sql` - full MySQL script (Part A: DDL, Part B: Constraints)
- `Documentation.pdf` - execution screenshots

## How to run
1. Open MySQL Workbench / CLI (MySQL 8.0.13+).
2. Run `employee_db.sql` section by section.
3. The last 7 INSERT statements are meant to fail, to prove the constraints.

## Constraints applied
| Table | Column | Constraint |
|---|---|---|
| Departments | department_id | PRIMARY KEY |
| Departments | department_name | NOT NULL, UNIQUE |
| Location | location_id | PRIMARY KEY, AUTO_INCREMENT |
| Location | location_name | NOT NULL, UNIQUE |
| Employees | employee_id | PRIMARY KEY |
| Employees | employee_name | NOT NULL |
| Employees | gender | ENUM('M','F') |
| Employees | age | CHECK (age >= 18) |
| Employees | hire_date | DEFAULT (CURRENT_DATE) |
| Employees | department_id, location_id | FOREIGN KEY |

## Dataset
No external dataset; small sample rows are inserted in the script.
