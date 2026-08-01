select id,spent
 from {{source('datafeed_shared_schema','customers')}}
 having(spent < 0)