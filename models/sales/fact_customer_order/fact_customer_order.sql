{{
  config(
    materialized='table'
  )
}}

SELECT 
    _FIVETRAN_ID	,
    C_PHONE,
    C_ACCTBAL,
    C_MKTSEGMENT,
    C_ADDRESS,
    C_NATIONKEY,
    CUST_KEY,
    C_NAME,
    C_COMMENT,
    C_CUSTKEY,
    _FIVETRAN_DELETED,
    _FIVETRAN_SYNCED 
from {{ ref('int_customer_order') }} c