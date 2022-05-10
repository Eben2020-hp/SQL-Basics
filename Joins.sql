--------------------- JOINS ---------------------
INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);
SELECT * FROM branch;

-- Q1: Find All Branches And The Names Of Their Managers
SELECT employee.emp_id, branch.branch_name, employee.first_name FROM employee
FULL OUTER JOIN branch
ON branch.mgr_id = employee.emp_id;