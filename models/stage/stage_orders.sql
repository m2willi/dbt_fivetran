{{
  config(
    materialized='table'
  )
}}

SELECT 
   O_ORDERKEY
FROM {{ source('fivetran_data','ORDERS_CSV') }}