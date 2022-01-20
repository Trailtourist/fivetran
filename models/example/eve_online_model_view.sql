
-- Use the `ref` function to select from other models

{{ config(materialized='view') }}

select *
from {{ ref('eve_online_model') }}
where TYPE_ID in (34,35,36,37,37,39) 
