--CREATE DATABASE SEUBD

--Create Department table
CREATE TABLE Department (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50),
  location VARCHAR(50),
  budget INT
);

--Insert data
INSERT INTO Department
(dept_id, dept_name, location, budget) VALUES
(1, 'HR', 'Rajshahi', 700000),
(2, 'IT', 'Sylhet', 850000),
(3, 'Finance', 'Chittagong', 600000),
(4, 'Marketing', 'Dhaka', NULL);

--Create Employee table
CREATE TABLE Employee (
  emp_id INT PRIMARY KEY,
  name VARCHAR(50),
  salary INT,
  dept_id INT,
  FOREIGN KEY (dept_id)
  REFERENCES Department(dept_id)
);

--Insert data
INSERT INTO Employee (emp_id, name, salary, dept_id) VALUES
(101, 'Arif', 45000, 1),
(102, 'Nila', 60000, 2),
(103, 'Sumon', 55000, 3),
(104, 'Rina', 65000, 2),
(105, 'Karim', NULL, 4),
(106, 'Jamil', 50000, 3);

-- * deowa mane shob attribute show korbe
SELECT*
FROM employee

SELECT name, salary  --Akhon just name r salary show korbe; SELECT* dile shob show korto
FROM Employee
WHERE salary > 55000; --55000 er beshi jader salary tadr show korbe

SELECT name, salary
FROM Employee
WHERE name = 'Arif';

--Find employee name starting with A or S
SELECT name, salary
FROM Employee
WHERE name LIKE 'A%' OR name LIKE 'S%';

--Find employee name starting with A or S
SELECT name, salary
FROM Employee
WHERE name LIKE '%A' OR name LIKE '%S';

SELECT name, salary
FROM Employee
WHERE name LIKE '%A%' OR name LIKE '%S%'; --name e A or S thakle e print hobe

--salary decendng order e shajanor jonno
SELECT name, salary
FROM Employee
ORDER BY salary DESC; 

--salary Acending order e shajanor jonno (by default o acending a e thake)
SELECT name, salary
FROM Employee
ORDER BY salary ASC; 





