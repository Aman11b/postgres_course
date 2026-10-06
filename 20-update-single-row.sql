-- sudo su - postgres -c "psql -d postgresql -f ./20-update-single-row.sql"


SELECT name,price,stock,sku
FROM products
WHERE sku = 'HEAD001';

-- ('Headphones', 'Audio', 5999.99, 20, 'HEAD001', 'Wireless noise-cancelling headphones'),

UPDATE products 
SET price=1000.00,
    stock =23
WHERE sku = 'HEAD001';

SELECT name,price,stock,sku
FROM products
WHERE sku = 'HEAD001';