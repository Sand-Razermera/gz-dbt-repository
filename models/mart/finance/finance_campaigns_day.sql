SELECT 
date_date,
(operational_margin - ads_cost) as ads_margin,
avg_basket,
operational_margin,
ads_cost,
impression,
click,
total_quantity,
total_revenue,
total_purchase_cost,
margint,
total_shipping_fee,
total_logcost,
ship_cost
FROM {{ ref('int_campaigns_day') }}
FULL OUTER JOIN {{ ref('finance_days') }}
USING (date_date)