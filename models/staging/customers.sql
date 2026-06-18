{{ config(materialized = 'table')}}

with tb1 as(
    select
    id as cust_id,
    first_name,
    last_name
    from {{source('datafeed_shared_schema','raw_customers')}}
)
select * from tb1 