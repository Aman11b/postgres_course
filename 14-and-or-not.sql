-- AND -> all conditoon must be true
-- OR -> atleast one should be true
-- NOT -> reverse/exclude a condition


-- $ sudo su - postgres -c "psql -d postgresql -f ./14-and-or-not.sql"

SELECT name,category,price
FROM products
WHERE category ='electronics'
    AND price > 5000;


SELECT name, category,price
FROM products
WHERE category ='electronics' OR category='Footwear';

SELECT name,category,price
FROM products
WHERE NOT category='Accessories' AND NOT category='Electronics' AND NOT category='electronics';

SELECT name,category, price,stock
FROM products
WHERE (category='electronics' OR category='Accessories')
    AND stock>0