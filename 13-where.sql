--  sudo su - postgres -c "psql -d postgresql -f ./13-where.sql"

SELECT name,category,price
FROM products
WHERE category='electronics';


SELECT name ,price
FROM products
WHERE price > 5000;


