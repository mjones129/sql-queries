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