SELECT *
FROM pg_indexes
WHERE tablename = 'customers';

SELECT *
FROM pg_indexes
WHERE tablename = 'books';

SELECT *
FROM pg_indexes
WHERE tablename = 'orders';


CREATE INDEX customers_customer_id_idx ON customers(customer_id);

CREATE INDEX customers_book_id_title_original_language_sales_in_millions_idx ON books(book_id, title, original_language, sales_in_millions);

EXPLAIN ANALYZE SELECT original_language, title,sales_in_millions FROM books WHERE original_language = 'French';

SELECT pg_size_pretty (pg_total_relation_size('books'));


DROP INDEX IF EXISTS customers_book_id_title_original_language_sales_in_millions_idx;

SELECT NOW();

\COPY orders FROM 'orders_add.txt' DELIMITER ',' CSV HEADER;

SELECT NOW();

-- checking indexes here
SELECT *
FROM pg_indexes
WHERE tablename = 'customers';

-- checking performance (planning 0.114)
EXPLAIN ANALYZE SELECT first_name, email_address FROM customers WHERE customer_id = 3;

-- checking db size (15 mb)
SELECT pg_size_pretty (pg_total_relation_size('customers'));

-- creating an index
CREATE INDEX customers_first_name_email_address_idx ON customers(first_name, email_address);

SELECT *
FROM pg_indexes
WHERE tablename = 'customers';

-- checking db size (20 mb)
SELECT pg_size_pretty (pg_total_relation_size('customers'));

-- checking performance (planning 0.076)
EXPLAIN ANALYZE SELECT first_name, email_address FROM customers WHERE customer_id = 3;
