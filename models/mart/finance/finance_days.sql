SELECT
date_date,
COUNT(orders_id) as nb_transactions,
ROUND(SUM(revenue),2) as total_revenue,
ROUND(AVG(revenue),2) as avg_basket,
ROUND(SUM(operational_margin),2) as operational_margin,
ROUND(SUM(purchase_cost),2) as total_purchase_cost,
ROUND(SUM(shipping_fee),2) as total_shipping_fee,
ROUND(SUM(logcost),2) as total_logcost,
SUM(quantity) as total_quantity
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
