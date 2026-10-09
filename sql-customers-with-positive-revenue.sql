-- Active: 1787408641491@@127.0.0.1@5432@postgres

DROP TABLE IF EXISTS Customers;

CREATE TABLE IF NOT EXISTS Customers (
    customer_id int,
    year int,
    revenue int
);

INSERT INTO
    Customers (customer_id, year, revenue)
VALUES (1, 2019, 100),
    (1, 2020, 50),
    (2, 2020, -30),
    (3, 2019, 80),
    (3, 2020, 25),
    (4, 2020, 0);

SELECT customer_id FROM Customers WHERE year = 2020 AND revenue > 0;