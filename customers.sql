select
customer.id,
customer.name,
customer.email,
min(orders.created_at) as first_order_at,
count(orders.customer_id) as number_of_orders
from  `analytics-engineers-club.coffee_shop.customers` customer
join `analytics-engineers-club.coffee_shop.orders` orders
on customer.id = orders.customer_id
group by customer.id,customer.name,customer.email
order by first_order_at
limit 5;
