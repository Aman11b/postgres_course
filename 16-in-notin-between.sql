-- IN -> value must match on item in list
--  NOT IN -> value must not match any item
-- BETWEEN -> value must be between a range

SELECT name,category,price
FROM products
WHERE category IN ('Electronics','Audio');

-- sudo service postgresql start


-- Find specific products by SKU

SELECT name,sku, price
FROM products
WHERE sku IN ('LAP001', 'USB001', 'BK001', 'LIGHT-LED-001');

-- Find products with specific prices
SELECT name,price,stock
FROM products
WHERE price IN (5999.99, 8999.99, 2499.50);

-- Find products NOT in these categories
-- SELECT name, category,price
-- FROM products
-- WHERE category NOT IN ('Books', 'Clothing', 'Bags');

SELECT name, stock
FROM products
WHERE stock NOT IN (5, 10, 15, 20);

-- Find products with price between 1000 and 10000
SELECT name, price, category
FROM products
WHERE price BETWEEN 1000 AND 10000;

-- Products with high stock (>= 40) in specific categories

SELECT name,category, stock
FROM products
WHERE category IN ('Electronics', 'Accessories')
    AND stock BETWEEN 40 AND 500;

-- Find budget products (under 5000)
SELECT name, price, stock
FROM products
WHERE price BETWEEN 100 AND 5000
ORDER BY price;

-- Electronics in price range with decent stock
-- this will include 1000 and 50000 too
SELECT name,category ,price,stock
FROM products
WHERE category IN ('Electronics', 'Accessories')
    AND price BETWEEN 1000 AND 50000
    AND stock > 20;