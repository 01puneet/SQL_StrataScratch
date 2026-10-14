select
    c.id,
    c.first_name,
    sum(o.total_order_cost) as sum
from
    customers c
    inner join orders o on c.id = o.cust_id
group by
    1,
    2
order by
    c.first_name