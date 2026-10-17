select
    sum(sales_revenue) as total_revenue
from
    sales_performance
where
    id in (3, 7)