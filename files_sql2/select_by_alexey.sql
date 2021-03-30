select orders.id, date, customer_id, product_name, amount
from ORDERS
         left join customers on ORDERS.customer_id = customers.id
WHERE customers.id in (select id from customers where lower(name) = lower('alexey'));

