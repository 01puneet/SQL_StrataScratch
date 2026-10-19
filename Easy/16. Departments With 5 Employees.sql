select
    department
from
    (
        select
            department,
            count(id) as total
        from
            employee
        group by
            1
    ) b
where
    b.total >= 5