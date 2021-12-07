{{
  config(
    materialized='table'
  )
}}

SELECT 
   O_ORDERKEY,
   o_custkey
FROM {{ source('fivetran_data','ORDERS_CSV') }}