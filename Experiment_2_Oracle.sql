Experiment 2: Insertion, Deletion, Modification, Alteration, Updating and Conditional Record Viewing

Oracle SQL Queries

1. Create Employee Table
CREATE TABLE Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50) NOT NULL,
    Department VARCHAR2(25) NOT NULL,
    Designation VARCHAR2(30) NOT NULL,
    Salary NUMBER(10,2) NOT NULL,
    City VARCHAR2(30),
    Join_Date DATE NOT NULL
);
2. Insert Eight Initial Records
INSERT ALL
    INTO Employee VALUES (201, 'Asha', 'HR', 'Executive', 38000, 'Chennai', DATE '2023-06-12')
    INTO Employee VALUES (202, 'Bharat', 'IT', 'Developer', 52000, 'Hyderabad', DATE '2022-08-01')
    INTO Employee VALUES (203, 'Charan', 'Sales', 'Associate', 32000, 'Vijayawada', DATE '2024-01-15')
    INTO Employee VALUES (204, 'Deepa', 'IT', 'Analyst', 48000, 'Bengaluru', DATE '2023-03-20')
    INTO Employee VALUES (205, 'Eshan', 'Finance', 'Accountant', 45000, 'Chennai', DATE '2021-11-05')
    INTO Employee VALUES (206, 'Farah', 'HR', 'Recruiter', 41000, 'Hyderabad', DATE '2024-02-10')
    INTO Employee VALUES (207, 'Gopal', 'Sales', 'Executive', 35000, 'Nellore', DATE '2022-07-18')
    INTO Employee VALUES (208, 'Hema', 'IT', 'Developer', 56000, 'Tirupati', DATE '2021-09-30')
SELECT 1 FROM DUAL;
COMMIT;
3. View Initial Records
SELECT * FROM Employee
ORDER BY Emp_ID;
4. Insert One New Employee
INSERT INTO Employee
VALUES (209, 'Ishita', 'Marketing', 'Coordinator', 39000, 'Guntur', DATE '2025-01-06');
5. Update One Employee's Salary
UPDATE Employee
SET Salary = 55000
WHERE Emp_ID = 202;

SELECT Emp_ID, Emp_Name, Salary
FROM Employee
WHERE Emp_ID = 202;
6. Increase Sales Salaries by 10%
UPDATE Employee
SET Salary = ROUND(Salary * 1.10, 2)
WHERE Department = 'Sales';

SELECT Emp_ID, Emp_Name, Salary
FROM Employee
WHERE Department = 'Sales'
ORDER BY Emp_ID;
7. Modify Employee Department
UPDATE Employee
SET Department = 'Operations'
WHERE Emp_ID = 206;

SELECT Emp_ID, Emp_Name, Department
FROM Employee
WHERE Emp_ID = 206;
8. Add a New Column
ALTER TABLE Employee
ADD (Email VARCHAR2(80));

DESC Employee;
9. Populate the Email Column
UPDATE Employee
SET Email = 'asha@company.test'
WHERE Emp_ID = 201;

UPDATE Employee
SET Email = 'bharat@company.test'
WHERE Emp_ID = 202;

SELECT Emp_ID, Emp_Name, Email
FROM Employee
WHERE Email IS NOT NULL
ORDER BY Emp_ID;
10. Modify a Column Data Type
ALTER TABLE Employee
MODIFY (Designation VARCHAR2(50) NOT NULL);

DESC Employee;
11. View Conditional Records
SELECT Emp_ID, Emp_Name, Department, Salary
FROM Employee
WHERE Salary >= 45000
ORDER BY Salary DESC, Emp_ID;
12. Delete a Selected Employee
DELETE FROM Employee
WHERE Emp_ID = 209;

SELECT COUNT(*) AS Total_Employees
FROM Employee;
13. Delete an Employee Using a Condition
DELETE FROM Employee
WHERE Department = 'Operations' AND Emp_ID = 206;

SELECT Emp_ID, Emp_Name, Department
FROM Employee
ORDER BY Emp_ID;
14. View Final Payroll
SELECT Emp_ID, Emp_Name, Department, Salary, Email
FROM Employee
ORDER BY Emp_ID;
15. Verify Final Employee Count
SELECT COUNT(*) AS Final_Count
FROM Employee;
16. View Sales Employees
SELECT Emp_Name, Salary
FROM Employee
WHERE Department = 'Sales'
ORDER BY Emp_ID;
17. Display Employee Table Structure
DESC Employee;
COMMIT;
