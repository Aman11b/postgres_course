--  $ sudo su - postgres -c "psql -d postgresql -f ./17-null-notnull.sql"

-- NULL -> missing and unknown
-- should not check = null, use is null is not null

SELECT name,description
FROM products
WHERE description IS NULL;


SELECT name,description
FROM products
WHERE description IS NOT NULL;

