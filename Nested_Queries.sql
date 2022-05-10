--------------------- NESTED QUERIES ---------------------
-- Q1: Find Names Of All The Employees Who Have Sold Over 30,000 To A Single Client
SELECT employee.first_name, employee.last_name FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id FROM works_with 
    WHERE works_with.total_sales > 30000
);

--Q2: Find All Clients Who Are Handled By The Branch That Michael Scott Manages
SELECT client.client_name FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id FROM branch WHERE branch.mgr_id = 102 
    FETCH FIRST 1 ROWS ONLY
);
------------------------------------- OR -------------------------------------
SELECT client.client_name FROM client
WHERE client.branch_id IN (
    SELECT branch.branch_id FROM branch
    WHERE branch.mgr_id IN (
        SELECT employee.emp_id FROM employee 
        WHERE employee.first_name = 'Michael' AND employee.last_name = 'Scott'
    )
);