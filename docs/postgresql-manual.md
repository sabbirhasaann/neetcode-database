### Create Table
-----------------
#### Conditional Create Table
CREATE TABLE IF NOT EXISTS table_name(....);

### Delete Table
----------------
DROP TABLE table_name;

#### Conditional Deleteion
DROP TABLE IF EXISTS table_name;

### To check if a table exists in PostgreSQL
-------------------------------
SELECT EXISTS (
    SELECT 1 
    FROM pg_tables 
    WHERE schemaname = 'public' 
    AND tablename = 'my_table'
);
