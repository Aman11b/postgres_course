-- sudo su - postgres -c "psql -d postgresql -f ./21-multiple-row-update.sql"

SELECT name,category,price
FROM products
WHERE category='Electronics';

--      name     |  category   |  price   
--------------+-------------+----------
--  Laptop       | Electronics | 50000.00
--  Smartphone X | Electronics | 89999.00

UPDATE products
SET price=ROUND(price * 1.10,2)
WHERE category='Electronics';

SELECT name,category,price
FROM products
WHERE category='Electronics';

