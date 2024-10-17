SELECT
    ssce.*
  , ssc.order_id
  , so.customer_id
FROM      {{ ref("stg_support_case_event") }} ssce
LEFT JOIN {{ ref("stg_support_case") }}       ssc
    ON ssce.support_case_id = ssc.support_case_id
LEFT JOIN {{ ref("stg_order") }}              so
    ON ssc.order_id = so.order_id
    