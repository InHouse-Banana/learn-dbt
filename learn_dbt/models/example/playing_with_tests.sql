 {{ config(materialized='table') }}

select c_custkey, c_mktsegment, {{rename_segments('c_mktsegment')}} as mkt_segment_adjusted
from snowflake_sample_data.tpch_sf1.customer
