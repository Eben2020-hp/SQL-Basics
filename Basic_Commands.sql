---- DROP TABLES ----
DROP TABLE employee;
DROP TABLE branch;
DROP TABLE client;
DROP TABLE works_with;
DROP TABLE branch_supplier;



---- SQL BASIC COMMANDS ----
SELECT * FROM employee
ORDER BY emp_id ASC;

SELECT * FROM branch; -- Find all Branches
SELECT * FROM branch_supplier;
SELECT * FROM client; -- Finad all Clients
SELECT * FROM works_with;




-- Q1: Find All Employees Ordered by Salary
SELECT * FROM employee
ORDER BY salary DESC;

-- Q2: Find All Employees Ordered by Sex Then Name
SELECT * FROM employee
ORDER BY sex, first_name, last_name;

-- Q3: Find The First 5 Employees In The Table
SELECT * FROM employee
ORDER BY emp_id ASC
FETCH FIRST 5 ROWS ONLY;   --- OR GIVE "LIMIT 5"

-- Q4: Find First And Last Names Of All The Employees
SELECT first_name, last_name FROM employee;

-- Q5: Find Forename And Surname Of All The Employees
SELECT first_name AS Forename, last_name AS Surname FROM employee;

-- Q6: Find Out All The Different Genders
SELECT DISTINCT sex FROM employee;