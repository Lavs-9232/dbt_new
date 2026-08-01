{{ config(materialized = 'table')}}

select
  empid,
  firstname,
  salary,
  tax_amount,
  ({{calculate_amount('salary','tax_amount')}}) as total_amount
  from  {{source('datafeed_shared_schema','emp_sal')}}