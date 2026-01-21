SELECT 
    date,
    CASE
        WHEN close > open THEN 'upwards'
        ELSE 'downwards'
    END AS trend_for_the_day
FROM
    aapl
