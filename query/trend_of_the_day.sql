SELECT 
    date,
    (lag(close) over (order by date)) prev,
    open,
    CASE
        WHEN (lag(close) over (order by date)) > open THEN 'downwards'
        ELSE 'upwards'
    END AS trend_for_the_day
FROM
    aapl
