INSERT INTO products(
    name,
    category,
    price,
    stock,
    sku,
    description 
)
VALUES(
    'laptop stand',
    'electronics',
    '5000.00',
    23,
    'ELEC-KEY-002',
    'laptop satand description'
);

-- SELECT * FROM products;

SELECT * FROM products WHERE stock=23;

SELECT * FROM products WHERE sku='BK001';