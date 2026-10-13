select
    t.worker_title as best_paid_title
from
    worker w
    join title t on w.worker_id = t.worker_ref_id
group by
    t.worker_title,
    w.salary
having
    w.salary = (
        select
            max(w.salary)
        from
            worker w
            join title t on w.worker_id = t.worker_ref_id
    )