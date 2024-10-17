SELECT 
      soe.*
    , so.customer_id
FROM        {{ ref("stg_order_event") }} soe
LEFT JOIN   {{ ref("stg_order") }}       so
    ON soe.order_id = so.order_id
    