SELECT sum(c_acctbal) as sum_c_acctbal
from {{ ref('playing_with_tests') }}
having sum_c_acctbal  >= 10000000000