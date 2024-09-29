SELECT
    order_items.order_item_id, 
    order_items.order_id, 
    order_items.asin,
    order_items.item_status,
    order_items.quantity AS fado_quantity,
    order_items.tracking_number
FROM
    order_items
INNER JOIN
    orders
    ON order_items.order_id = orders.order_id
WHERE
    order_items.asin = '{{ $json["asin"] }}'
    AND order_items.language = 'us'
    AND orders.private_note LIKE '%{{ $json["orderID"] }}%'
    AND FROM_UNIXTIME(orders.created_date, "%Y") >= 2024
    AND order_items.item_status NOT IN (-4, 0);
