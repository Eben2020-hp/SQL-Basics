---- CREATE EMPLOYEE TABLE ----
CREATE TABLE employee (emp_id INTEGER PRIMARY KEY, first_name VARCHAR(10),
last_name VARCHAR(15), birth_date DATE, sex VARCHAR(2), salary INTEGER,
super_id INTEGER, branch_id INTEGER);     --FOREIGN KEYS

---- CREATE BRANCH TABLE ----
CREATE TABLE branch (branch_id INTEGER PRIMARY KEY, branch_name VARCHAR(20),
mgr_id INTEGER, mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL);    -- Use ON DELETE SET NULL or ON DELETE CASCADE whenever we specify the FK


---- ADD FOREIGN KEYS TO EXISTING TABLES ----
ALTER TABLE employee
ADD FOREIGN KEY(super_id) REFERENCES employee(emp_id)
ON DELETE SET NULL;

ALTER TABLE employee
ADD FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
ON DELETE SET NULL;


---- CREATE CLIENT TABLE ----
CREATE TABLE client(client_id INTEGER PRIMARY KEY, client_name VARCHAR(20),
branch_id INTEGER, FOREIGN KEY(branch_id) REFERENCES branch(branch_id) 
ON DELETE SET NULL);

---- CREATE WORKS_WITH TABLE ----
CREATE TABLE works_with(emp_id INTEGER, client_id INTEGER, total_sales INTEGER, 
PRIMARY KEY(emp_id, client_id),
FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE);

---- CREATE BRANCH_SUPPLIER TABLE ----
CREATE TABLE branch_supplier(branch_id INTEGER, supplier_name VARCHAR(30), 
supply_type VARCHAR(20), 
PRIMARY KEY(branch_id, supplier_name),
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE);