select distinct
    *
from
    lyft_rides
WHERE
    weather = 'rainy'
    and hour < 12;