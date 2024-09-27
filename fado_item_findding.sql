SELECT
    order_items.order_item_id, 
    order_items.order_id, 
    order_items.asin,
		order_items.item_status, 
    orders.public_note, 
    orders.private_note
FROM
    order_items
INNER JOIN
    orders
    ON order_items.order_id = orders.order_id
WHERE
    order_items.asin = '1684228417'
		AND order_items.item_status = 5
		AND order_items.language = 'us'
    AND orders.private_note LIKE '%203-2182295-6837146%' 
    AND FROM_UNIXTIME(orders.created_date, "%Y") >= 2024;
