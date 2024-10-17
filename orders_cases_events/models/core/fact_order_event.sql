SELECT 
      soe.*
    , fo.customer_id
FROM        {{ ref("stg_order_event") }} soe
LEFT JOIN   {{ ref("fact_order") }}      fo
    ON soe.order_id = fo.order_id
