--  sudo su - postgres -c "psql -d postgresql -f ./12-select.sql"

-- SELECT * FROM products;

SELECT name,category,price,stock FROM products;

-- Alias - AS

SELECT 
    name AS product_name,
    price AS selling_price,
    stock AS available_quantity
FROM products;