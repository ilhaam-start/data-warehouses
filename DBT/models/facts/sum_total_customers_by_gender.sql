{{ config(
    materialized = 'table'
)}}

SELECT
    gender,
    total_customers
FROM {{ ref('sum_total_customers_by_gender') }}