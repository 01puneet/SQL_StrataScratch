select
    worker_id,
    first_name,
    last_name,
    salary,
    joining_date,
    department
from
    (
        select
            worker_id,
            first_name,
            last_name,
            salary,
            joining_date,
            department,
            length (first_name) as lenth
        from
            worker
        group by
            1,
            2,
            3,
            4,
            5
    ) b
where
    b.lenth = 6
    and first_name like '%h'