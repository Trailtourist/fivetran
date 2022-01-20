
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

select 
  SYSTEM_ID
  , TYPE_ID
  , sum(volume_remain) as sum_vol_remain
  , avg(price) as avg_price
from GOOGLE_CLOUD_FUNCTION.EVE_ORDERS
group by
  SYSTEM_ID
  , TYPE_ID