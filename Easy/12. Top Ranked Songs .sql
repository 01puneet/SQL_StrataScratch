
select
    trackname,
    count(times_top1) as times_top1
from
    (
        select
            id,
            trackname,
            region,
            min(position) as times_top1
        from
            spotify_worldwide_daily_song_ranking
        where
            position = 1
        group by
            1,
            2,
            3
    )
group by
    1
order by
    times_top1 desc