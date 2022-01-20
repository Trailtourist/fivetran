
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

select 
  SYSTEM_ID
  , TYPE_ID
  , sum(volume_remain)
  , avg(price)
from EVE_ORDERS
group by
  SYSTEM_ID
  , TYPE_ID