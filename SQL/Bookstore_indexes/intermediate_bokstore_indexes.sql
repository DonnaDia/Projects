select * from customers limit 10;
select * from orders limit 10;
select * from books limit 10;

SELECT *
FROM pg_indexes
WHERE tablename = 'customers';

SELECT *
FROM pg_indexes
WHERE tablename = 'orders';

SELECT *
FROM pg_indexes
WHERE tablename = 'books';

EXPLAIN ANALYZE SELECT customer_id, quantity from orders where quantity > 18;

CREATE INDEX orders_quantity_idx
ON orders (quantity)
WHERE quantity > 18;

EXPLAIN ANALYZE SELECT customer_id, quantity from orders where quantity > 18;

EXPLAIN ANALYZE SELECT * from customers where customer_id < 100;

ALTER TABLE customers ADD PRIMARY KEY (customer_id);

EXPLAIN ANALYZE SELECT * from customers where customer_id < 100;


CREATE INDEX orders_customer_id_book_id_idx ON orders(customer_id, book_id);


EXPLAIN ANALYZE SELECT * from orders where (quantity * price_base) > 100;

CREATE INDEX orders_total_price_idx ON orders ((quantity * price_base));

EXPLAIN ANALYZE SELECT * from orders where (quantity * price_base) > 100;
