select
    e.department,
    e.first_name,
    e.salary,
    t.avg_salary
from
    employee e
    inner join (
        select
            department,
            avg(salary) as avg_salary
        from
            employee
        group by
            1
    ) t on e.department = t.department
order by
    department