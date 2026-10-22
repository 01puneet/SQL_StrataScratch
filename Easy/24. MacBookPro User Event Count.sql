select
    event_name,
    count(device)
from
    playbook_events
where
    device = 'MacBook Pro'
group by
    1