CREATE TABLE AAPL AS
SELECT
    date,
    MAX(close) AS close,
    MAX(open) AS open,
    MAX(high) AS high,
    MIN(low) AS low,
    SUM(volume) AS volume
FROM RAW_AAPL
GROUP BY date;
