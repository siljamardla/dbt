SELECT
    ssce.*
  , fsc.order_id
  , fo.customer_id
FROM      {{ ref("stg_support_case_event") }} ssce
LEFT JOIN {{ ref("fact_support_case") }}       fsc
    ON ssce.support_case_id = fsc.support_case_id
LEFT JOIN {{ ref("fact_order") }}              fo
    ON fsc.order_id = fo.order_id
    