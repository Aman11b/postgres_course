-- sudo su - postgres -c "psql -d postgresql -f ./18-order-by.sql"


SELECT name,price
FROM products
ORDER BY price ASC;


SELECT name,price
FROM products
ORDER BY price DESC;

-- Sort all rows by category in ascending (alphabetical) order: A → Z
--  Within each category, sort by price in descending order (highest first)
SELECT name, category, price
FROM products
ORDER BY category ASC, price DESC;