-- Active: 1787408641491@@127.0.0.1@5432@postgres

DROP TABLE IF EXISTS Employees;

CREATE TABLE IF NOT EXISTS Employees (
    employee_id int PRIMARY KEY,
    name VARCHAR,
    salary int
);

INSERT INTO
    employees (employee_id, name, salary)
VALUES (1, 'John', 5000),
    (2, 'Sarah', 4000),
    (3, 'Mark', 6000),
    (4, 'Emily', 4500),
    (5, 'David', 5500);

INSERT INTO
    employees (employee_id, name, salary)
VALUES (7, 'Martin', 8000),
    (3, 'Michelle', 6000),
    (9, 'Morgan', 9000),
    (1, 'Murphy', 5000),
    (5, 'M', 7000),
    (2, 'Alice', 4000),
    (4, 'Bob', 4500),
    (6, 'Carol', 5500),
    (8, 'Diana', 6500);

SELECT * FROM Employees;

SELECT
    employee_id,
    CASE
        WHEN employee_id % 2 = 1
        AND name NOT LIKE 'M%' THEN salary
        ELSE 0
    END AS bonus
FROM Employees
ORDER BY employee_id ASC;