CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE orders (
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       
       
-- select all orders placed by boy george
SELECT id FROM customers WHERE last_name = 'George';
-- returns id value of 1
SELECT * FROM orders WHERE customer_id = 1;
-- returns all boy george's orders... but there's a better way

SELECT * FROM orders WHERE customer_id = (SELECT id FROM customers WHERE last_name = 'George');

-- To perform a (kind of useless) cross join:
SELECT * FROM customers, orders;

-- inner join orders to customers
SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders ON orders.customer_id = customers.id;

-- inner join customers to orders
-- INNER is the default JOIN type, so it's optional. Other joins require a type to be specified
SELECT * from orders
JOIN customers ON customers.id = orders.customer_id;

-- inner joins with group by
SELECT first_name, last_name, SUM(amount) as total FROM customers
JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name
ORDER BY total;


SELECT first_name, last_name, order_date, amount FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id;

-- left join with group by, replace null values with 0
SELECT first_name, last_name, IFNULL(SUM(amount), 0) AS money_spent FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY first_name, last_name;

-- right join
SELECT first_name, last_name, IFNULL(SUM(amount), 0) AS money_spent FROM customers
RIGHT JOIN orders ON customers.id = orders.customer_id
GROUP BY first_name, last_name;