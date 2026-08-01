{% snapshot  snap_customer_timestamp %}

{{
    config(
      strategy='timestamp',
      unique_key='id',
      updated_at='insert_at',
      invalidate_hard_deletes = True
    )
}}
select * 
from {{source('datafeed_shared_schema','customers')}}

{% endsnapshot %}
