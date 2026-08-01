{% snapshot  snap_orders_checkcol %}

{{
    config(
      strategy='check',
      unique_key='id',
      check_cols =['userid','order_date','status'],
      invalidate_hard_deletes = True
    )
}}
select * 
from {{source('datafeed_shared_schema','raw_orders')}}

{% endsnapshot %}  
