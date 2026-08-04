create database SAMPLEDB;
Use SAMPLEDB;

CREATE TABLE SAMPLEDB ( 
Emp_ID INT PRIMARY KEY, 
Name VARCHAR(50), 
Department VARCHAR(30), 
Salary INT, 
Age INT 
);

INSERT INTO SAMPLEDB (Emp_ID, Name, Department, Salary, Age) 
VALUES 
(101, 'Rahul', 'IT', 60000, 25), 
(102, 'Anjali', 'HR', 45000, 28), 
(103, 'Vikram', 'Finance', 70000, 32), 
(104, 'Sneha', 'IT', 55000, 24), 
(105, 'Arjun', 'Sales', 50000, 30);

SELECT DISTINCT Salary
FROM SAMPLEDB;

SELECT
  age AS Employee_Age,
  salary AS Employee_Salary
FROM SAMPLEDB;

ALTER TABLE SAMPLEDB
ADD hire_date date;

UPDATE SAMPLEDB
SET hire_date = CASE EMP_ID
        WHEN 101 THEN '2023-01-15'
        WHEN 102 THEN '2023-02-20'
        WHEN 103 THEN '2023-03-10'
        WHEN 104 THEN '2023-04-05'
        WHEN 105 THEN '2023-05-25'
    END
WHERE EMP_ID BETWEEN 101 AND 105;
    
SELECT * FROM SAMPLEDB 
WHERE salary > 50000 AND hire_date < '2023-05-25';

ALTER TABLE SAMPLEDB
ADD Designation VARCHAR(30);

UPDATE SAMPLEDB
SET Designation = CASE EMP_ID
        WHEN 101 THEN 'Null'
        WHEN 102 THEN 'HR Manager'
        WHEN 103 THEN 'finance Head'
        WHEN 104 THEN 'Marketing Executive'
        WHEN 105 THEN 'Software Developer'
    END
WHERE EMP_ID BETWEEN 101 AND 105;

UPDATE SAMPLEDB
SET Designation = 'Data Scientist'
WHERE Designation IS NULL;

SELECT * FROM SAMPLEDB
ORDER BY
    Emp_ID ASC,
    Salary DESC;
    
SELECT * FROM SAMPLEDB
WHERE YEAR(hire_date) = 2023
ORDER BY hire_date ASC
LIMIT 5;    

SELECT SUM(Salary) FROM SAMPLEDB WHERE Department = 'Finance';

SELECT
  MIN(age)
FROM
  SAMPLEDB;
  
ALTER TABLE SAMPLEDB
ADD Location VARCHAR(30);

UPDATE SAMPLEDB
SET Location = CASE EMP_ID
        WHEN 101 THEN 'Bangalore'
        WHEN 102 THEN 'Chennai'
        WHEN 103 THEN 'Kochi'
        WHEN 104 THEN 'Bangalore'
        WHEN 105 THEN 'Chennai'
    END
WHERE EMP_ID BETWEEN 101 AND 105;  
  
SELECT location,
  MAX(salary)
FROM SAMPLEDB
GROUP BY location;  

SELECT  designation,
  AVG(salary) AS average_salary
FROM SAMPLEDB
WHERE  designation LIKE 'Analyst'
GROUP BY  designation;

SELECT Department
FROM SAMPLEDB
GROUP BY Department
HAVING COUNT(Emp_id) < 3;

ALTER TABLE SAMPLEDB
ADD Gender VARCHAR(30);

UPDATE SAMPLEDB
SET Gender = CASE EMP_ID
        WHEN 101 THEN 'Male'
        WHEN 102 THEN 'Female'
        WHEN 103 THEN 'Male'
        WHEN 104 THEN 'Female'
        WHEN 105 THEN 'Male'
    END
WHERE EMP_ID BETWEEN 101 AND 105;  

SELECT location FROM SAMPLEDB
WHERE gender = 'Female'
GROUP BY location
HAVING AVG(age) < 30;

SELECT
  name,
  designation,
  department
FROM  SAMPLEDB
WHERE  department IS NOT NULL;

SELECT
    d.department,
    COUNT(e.emp_id) AS total_employees
FROM
    SAMPLEDB AS d
LEFT JOIN
    SAMPLEDB AS e ON d.department = e.department
GROUP BY
    d.department, d.department
ORDER BY
    d.department;
    
    select * from sampledb
    
SELECT
  L.Location,
  E.Name
FROM Location AS L
LEFT JOIN Name AS E
  ON L.Location = E.Location;    