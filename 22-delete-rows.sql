-- sudo su - postgres -c "psql -d postgresql -f ./22-delete-rows.sql"

INSERT INTO products (name, category, price, stock, sku, description)
VALUES ('Test Mouse', 'Accessories', 1299.99, 50, 'TEST-MOUSE-001', 'This is a test product for learning DELETE');


SELECT name,sku,category,price FROM products;

-- DELETE by SKU (safest - using unique identifier)

DELETE FROM products WHERE sku ='TEST-MOUSE-001';


SELECT name,sku,category,price FROM products;

INSERT INTO products (name, category, price, stock, sku, description)
VALUES ('Test Keyboard', 'Accessories', 2999.99, 40, 'TEST-KB-001', 'Another test product');

SELECT name,sku,category,price FROM products;

DELETE FROM products WHERE name LIKE 'Test%';

SELECT name,sku,category,price FROM products;