{{ config(materialized = 'ephemeral')}}
with tb1 as
(
    select 
    id,
    userid,
    order_date,
    status 
    from {{source('datafeed_shared_schema','raw_orders')}}
)
select * from tb1