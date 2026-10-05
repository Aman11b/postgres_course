CREATE EXTENTION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;


CREATE TABLE products(
    id UUID PRIMARY KEY default gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK(price>=0),
    stock INTEGER NOT NULL default 0 check(stock>=0),
    sku TEXT UNIQUE,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO products (name, category, price, stock, sku, description)
VALUES
  ('Laptop', 'Electronics', 50000.00, 5, 'LAP001', 'High performance gaming laptop with RTX graphics'),
  ('T-Shirt', 'Clothing', 499.99, 100, 'TSH001', 'Comfortable cotton t-shirt for casual wear'),
  ('Headphones', 'Audio', 5999.99, 20, 'HEAD001', 'Wireless noise-cancelling headphones'),
  ('Running Shoes', 'Footwear', 7999.00, 45, 'RUN001', 'Professional running shoes with cushioning'),
  ('Smartwatch Pro', 'Wearables', 12999.99, 30, 'SW001', 'Advanced fitness tracking smartwatch'),
  ('DSLR Camera', 'Photography', 65000.00, 10, 'CAM001', 'Professional DSLR camera for photography'),
  ('USB-C Cable', 'Accessories', 299.99, 500, 'USB001', 'Fast charging USB-C cable 2 meters'),
  ('Travel Backpack', 'Bags', 3499.00, 25, 'BAK001', 'Spacious waterproof travel backpack'),
  ('Smartphone X', 'Electronics', 89999.00, 15, 'PHO001', '5G flagship smartphone with excellent camera'),
  ('PostgreSQL Book', 'Books', 599.00, 200, 'BK001', 'Complete guide to learning PostgreSQL database');

SELECT * FROM products;

--  sudo su - postgres -c "psql -d postgresql -f ./09-sql-base-file.sql"


