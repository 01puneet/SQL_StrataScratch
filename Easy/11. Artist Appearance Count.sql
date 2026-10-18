select
    artist,
    count(position) as n_occurences
from
    spotify_worldwide_daily_song_ranking
group by
    1
order by
    n_occurences desc


