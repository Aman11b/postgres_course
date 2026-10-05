-- LIKE -> case sensitive pattern
-- ILIKE -> case insensitive
-- % -> any number of charachters
-- _ -> exactly one character


-- SELECT * FROM products;

-- sudo su - postgres -c "psql -d postgresql -f ./15-like-ilike-pattern.sql"

-- % after El means anything can come after this
SELECT name,category,price
FROM products
WHERE category LIKE 'el%';

SELECT name,category,price
FROM products
WHERE category ILIKE 'el%';

SELECT name,category,description
FROM products
WHERE name ILIKE '%ch%'
    OR description ILIKE '%ch%';


-- Find products where category is exactly 8 characters
SELECT name,category
FROM products
WHERE category LIKE '________';


-- Find SKUs with pattern: 3 letters, dash, 3 numbers
SELECT name,sku
FROM products
WHERE sku LIKE '___001';

SELECT name,sku
FROM products
WHERE sku ILIKE '_s%';
