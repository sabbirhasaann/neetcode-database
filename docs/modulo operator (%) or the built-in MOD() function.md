
1. Using the Modulo Operator (%)

```sql
-- Check for Even numbers
SELECT * FROM your_table WHERE column_name % 2 = 0;

-- Check for Odd numbers
SELECT * FROM your_table WHERE column_name % 2 <> 0; -- or % 2 = 1
```

2. Using the MOD() Function

```sql
-- Check for Even numbers
SELECT * FROM your_table WHERE MOD(column_name, 2) = 0;

-- Check for Odd numbers
SELECT * FROM your_table WHERE MOD(column_name, 2) <> 0;
```

3. Labeling Values in a Query

```sql
SELECT 
    column_name,
    CASE 
        WHEN column_name % 2 = 0 THEN 'Even'
        ELSE 'Odd'
    END AS parity
FROM your_table;
```