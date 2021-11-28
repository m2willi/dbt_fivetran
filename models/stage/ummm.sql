version: 2

sources:

    name: fivetran_data # name of the source 
    schema: POSTGRES_RDS_FIVETRAN # this is the schema our raw data lives in
    database: FIVETRAN_DATABASE # this is the name of our database

    quoting:
      database: false
      schema: false
      identifier: false

    freshness:
      warn_after: {count: 24, period: hour}
      error_after: {count: 48, period: hour}

    tables:
      - name: CUSTOMER 
        description: >
          Contains demographic information about each customer
      - name: ORDERS_CSV 
        description: >
          Contains information about each order