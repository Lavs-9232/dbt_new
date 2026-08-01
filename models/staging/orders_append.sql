{{config(materialized = 'incremental',
          incremental_strategy = 'append',
          pre_hook = 'truncate table  {{this}}',
          post_hook = "delete from {{this}} where id is null"
        )}}

select * from {{source('datafeed_shared_schema','raw_orders')}}