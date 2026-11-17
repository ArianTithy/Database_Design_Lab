-- create
CREATE TABLE Department (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50) NOT NULL,
  Location VARCHAR(50),
  budget INT CHECK (budget >= 100000)
);

-- Insert data
INSERT INTO Department(dept_id, dept_name, location, budget) VALUES
(1, 'HR', 'DHAKA', 500000),
(2, 'IT', 'Sylhet', 800000),
(3, 'Finance', 'Chittagong', 600000);

SELECT *FROM Department;

-- update sylhet to Rajshahi
UPDATE Department
SET location = 'Rajshahi'
WHERE dept_name = 'IT';

SELECT *FROM Department;

-- update Dhaka's budget
UPDATE Department
SET budget = 120000
WHERE location = 'DHAKA';

SELECT *FROM Department;

-- delete the department which is located in Dhaka
DELETE FROM Department
WHERE location = 'DHAKA';
SELECT *FROM Department;

-- Add a manager column to the department TABLE
ALTER TABLE Department ADD ( manager VARCHAR(50));
SELECT *FROM Department;

-- Drop the manager column 
ALTER TABLE Department drop COLUMN manager ;
SELECT *FROM Department;

-- Modify the location column VARCHAR(100)
ALTER TABLE Department MODIFY location VARCHAR(100) ;
SELECT *FROM Department;
SHOW CREATE TABLE Department;


-- Add a constraint to ensure budget is at least 500000
ALTER TABLE Department ADD CONSTRAINT chk_budget_min CHECK (budget >= 500000);
SELECT * FROM Department;

-- CONSTRAINT delete korar jonno
ALTER TABLE Department DROP CONSTRAINT chk_budget_min ;
SELECT * FROM Department;
