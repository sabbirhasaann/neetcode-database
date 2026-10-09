DROP TABLE IF EXISTS Customers;

CREATE TABLE IF NOT EXISTS Customers (id int, name varchar);

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (id int, customer_id int);

INSERT INTO
    customers (id, name)
VALUES (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie'),
    (4, 'Diana');

INSERT INTO orders (id, customer_id) VALUES (101, 3), (102, 1);

SELECT * FROM Customers;

SELECT * FROM Orders;

SELECT c.name
FROM Customers c
    LEFT JOIN Orders o ON c.id = o.customer_id
WHERE
    o.customer_id is NULL;