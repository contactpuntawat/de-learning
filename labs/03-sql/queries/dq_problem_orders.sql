SELECT order_id, order_date, customer_id, status
FROM 'data/orders.csv'
WHERE ( status != 'completed') OR status IS NULL OR customer_id IS NULL
ORDER BY order_date ASC;
