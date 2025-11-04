SELECT
    date_date,
    orders_id,
    a.quantity,
    a.revenue,
    b.purchase_price,
    quantity*purchase_price AS purchase_cost,
    revenue - quantity*purchase_price as margin
FROM {{ ref('stg_raw__sales') }} AS a
JOIN {{ ref('stg_raw__product') }} AS b
    ON a.products_id = b.products_id