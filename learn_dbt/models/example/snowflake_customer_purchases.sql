 {{ config(materialized='table') }}
   
   select c.c_custkey, c.c_name, c.c_nationkey as nation, sum(o.o_totalprice) as total_order_price
     --from snowflake_sample_data.tpch_sf1.customer as c
     from {{ source('sample', 'customer')}} as c
left join {{ source('sample', 'orders')}} as o
       on c.c_custkey = o_custkey
 --group by c.c_custkey, c.c_name, c.c_nationkey
 {{group_by(3)}}