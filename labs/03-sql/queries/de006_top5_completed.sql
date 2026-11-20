SELECT order_id, order_date, product, amount
FROM 'data/orders.csv'
WHERE status = 'completed'
ORDER BY amount DESC, order_id ASC
LIMIT 5;
