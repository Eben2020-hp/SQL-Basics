--------------------- SQL FUNCTIONS ---------------------
-- Q1: Find The Number Of Employees
SELECT COUNT(DISTINCT emp_id) AS Number_of_Employees FROM employee;
------------------------------------- OR -------------------------------------
SELECT COUNT(emp_id) AS Number_of_Employees FROM employee;

-- Q2: Find The Number Of Female Employees Born After 1970
SELECT COUNT(emp_id) FROM employee
WHERE sex = 'F' AND birth_date > '1970-12-31';

-- Q3: Find The Average Of All Employee Salaries
SELECT AVG(salary) FROM employee;
------------------------------------- OR -------------------------------------
SELECT ROUND(AVG(salary), 2) FROM employee;

-- Q4: Find The Sum Of All Employee Salaries
SELECT SUM(salary) FROM employee;

-- Q5: Find Out How Many Males And Females There Are
SELECT COUNT(sex) AS VALUE_COUNT, sex FROM employee
GROUP BY sex;

-- Q6: Find The Total Sales Of Each Salesman
SELECT * FROM works_with;

SELECT EMP_ID, SUM(total_sales) AS TOTAL_SALES FROM works_with
GROUP BY EMP_ID;