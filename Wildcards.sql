--------------------- SQL WILDCARDS ---------------------
-- Q1: Find Any Client Who Are An LLC
SELECT * FROM client 
WHERE client_name LIKE '%LLC';

-- Q2: Find Any Branch Suppliers Who Are In The Label Business
SELECT * FROM branch_supplier
WHERE supplier_name LIKE '%Label%';

-- Q3: Find An Employee Born In October
SELECT * FROM employee
WHERE BIRTH_DATE LIKE '%10%';
------------------------------------- OR -------------------------------------
SELECT * FROM employee
WHERE BIRTH_DATE LIKE '____-10%';

-- Q4: Find Any Client Who Are Schools
SELECT * FROM client
WHERE client_name LIKE '%school%';