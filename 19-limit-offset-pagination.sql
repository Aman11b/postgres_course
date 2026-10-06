-- sudo su - postgres -c "psql -d postgresql -f ./19-limit-offset-pagination.sql"

-- limit -> how many rows you want to return
-- offset -> hoe many rows i want to skip


-- return 5 producs naes in asc


SELECT name,price
FROM products
ORDER BY name ASC 
LIMIT 5;

SELECT name,price
FROM products
ORDER BY price ASC 
LIMIT 5;

-- offset 0 -> dont want to skip anything 
-- offset 5 -> skil 5 products

SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 0;

SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 5;

-- (page -1 )* limit
-- (2-1)*5->5
-- (3-1)*5->10


SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 10;