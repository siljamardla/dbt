SELECT
    ssc.*
  , so.customer_id
FROM      {{ ref("stg_support_case") }} ssc
LEFT JOIN {{ ref("stg_order") }}        so
    ON ssc.order_id = so.order_id