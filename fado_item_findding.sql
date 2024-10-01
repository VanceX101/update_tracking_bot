-- Truy vấn chính để tìm item_id với cho TH1: cả asin và private_note
WITH PrimaryResults AS (
    SELECT
        order_items.order_item_id, 
        order_items.order_id, 
        order_items.asin,
        order_items.item_status,
        order_items.quantity AS fado_quantity,
        order_items.tracking_number,
        order_items.product_name 
    FROM
        order_items
    INNER JOIN
        orders ON order_items.order_id = orders.order_id
    WHERE
        order_items.asin LIKE '%B00J2EA8G6%'
        AND orders.private_note LIKE '%113-3382843-0773832%'
        AND FROM_UNIXTIME(orders.created_date, "%Y") >= 2024
        AND order_items.item_status NOT IN (-4, 0)
)

-- Kiểm tra xem có kết quả không, nếu không trả về item record nào thì thực hiện truy vấn thứ hai
SELECT *
FROM PrimaryResults
UNION ALL
SELECT
    order_items.order_item_id, 
    order_items.order_id, 
    order_items.asin,
    order_items.item_status,
    order_items.quantity AS fado_quantity,
    order_items.tracking_number,
    order_items.product_name  
FROM
    order_items
INNER JOIN
    orders ON order_items.order_id = orders.order_id
WHERE
    orders.private_note LIKE '%113-3382843-0773832%'
    AND FROM_UNIXTIME(orders.created_date, "%Y") >= 2024
    AND order_items.item_status NOT IN (-4, 0)
    AND NOT EXISTS (SELECT 1 FROM PrimaryResults);
