--------------------- UNIONS ---------------------
-- Q1: Find The List Of Employees And Branch Names
SELECT first_name FROM employee
UNION 
SELECT branch_name FROM branch;

-- Q2: Find The List Of All Clients And Branch Suppliers Names
SELECT client_name FROM client
UNION 
SELECT supplier_name FROM branch_supplier;

-- Q3: Find The List Of All Money Spent or Earned By The Company
SELECT salary FROM employee
UNION 
SELECT total_sales FROM works_with;