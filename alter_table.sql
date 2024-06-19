INSERT INTO companies (name, address)
VALUES ('blackbird auto', '123 spruce');

INSERT INTO companies (name, address)
VALUES ('luigis pies', '123 spruce');

SELECT * FROM companies;

-- drop a column
ALTER TABLE companies
DROP COLUMN phone; -- null values

ALTER TABLE companies
DROP COLUMN employee_count; -- contains values, but MYSQL don't care

-- rename tables
RENAME TABLE companies TO suppliers;

-- alternative renaming syntax
ALTER TABLE suppliers RENAME TO companies;

-- renaming columns
ALTER TABLE companies RENAME COLUMN name TO company_name;

DESC companies;

SELECT * from companies;

-- modify column definitions
ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';

INSERT INTO companies (address) VALUES ('2554 rose lane');

-- modifying constraints
-- add constraints to tables where constraints didn't exist before
ALTER TABLE tablename ADD CONSTRAINT some_constraint CHECK (1 = 1);

-- drop existing constraints from a table
ALTER TABLE tablename DROP CONSTRAINT constraint_name;
