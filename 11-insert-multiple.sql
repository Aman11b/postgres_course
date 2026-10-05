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
    5000.00,
    23,
    'ELEC-STAND-001',
    'adjustable laptop stand for better posture'
),
(
    'mechanical keyboard',
    'electronics',
    8999.99,
    45,
    'ELEC-KEY-001',
    'RGB mechanical keyboard with cherry switches'
),
(
    'mouse pad',
    'accessories',
    799.00,
    150,
    'ACC-PAD-001',
    'Large gaming mouse pad with non-slip base'
),
(
    'desk lamp',
    'lighting',
    2499.50,
    60,
    'LIGHT-LED-001',
    'LED desk lamp with brightness control'
);

-- View all products
-- SELECT * FROM products;

-- View newly inserted products
SELECT name, category, price, stock FROM products WHERE stock > 20;

-- Find products in electronics category
SELECT name, sku, price FROM products WHERE category = 'electronics';