SELECT
    ssc.*
  , fo.customer_id
FROM      {{ ref("stg_support_case") }} ssc
LEFT JOIN {{ ref("fact_order") }}       fo
    ON ssc.order_id = fo.order_id