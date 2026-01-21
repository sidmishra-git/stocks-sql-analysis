SELECT date, volume
from aapl
where volume != 0
order by volume 
limit 10
