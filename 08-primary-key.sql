-- uniqely identify each row


DROP TABLE IF EXISTS basics.sales;

CREATE TABLE basics.sales(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()

);

insert into basics.sales(title,price)
values
    ('sale 1',200),
    ('sale 2',400);

SELECT * from basics.sales;

SELECT * from basics.sales where id=2;


insert into basics.sales(id,title,price)
values
    (1, 'duplicate id',200);


