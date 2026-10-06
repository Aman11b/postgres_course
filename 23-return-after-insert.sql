-- returning retuns row immediatelty after update


INSERT INTO products (name, category, price, stock, sku, description)
VALUES ('Test Key', 'Accessories', 299.99, 20, 'TEST-KB-002', 'Another test product')
RETURNING id,name,category,price,stock,created_at;

UPDATE products 
SET price=1000.00,
    stock =23
WHERE sku = 'HEAD001'
RETURNING name,description,price;

-- sudo su - postgres -c "psql -d postgresql -f ./23-return-after-insert.sql"


DELETE FROM products 
WHERE name LIKE 'Test%'
RETURNING name,category,price,stock,sku,description;