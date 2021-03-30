CREATE TABLE ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         timestamp not null default now(),
    customer_id  INT,
    product_name VARCHAR,
    amount       INT,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);
INSERT INTO ORDERS (customer_id, product_name, amount)
VALUES ((Select ID
         from CUSTOMERS
         WHERE name = 'alexey'
           and surname = 'Bob'), 'Предмет 1', 242351);
INSERT INTO ORDERS (customer_id, product_name, amount)
VALUES ((Select id
         from CUSTOMERS
         WHERE name = 'alexey'
           and surname = 'Bob'), 'Предмет 2', 3045345);
INSERT INTO ORDERS (customer_id, product_name, amount)
VALUES ((SELECT ID
         from CUSTOMERS
         WHERE name = 'Alexey'
           and surname = 'Karimov'), 'Предмет 3', 475242);



