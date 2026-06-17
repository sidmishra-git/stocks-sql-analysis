-- 7-day and 30-day moving averages
-- Moving averages smooth out daily volatility to reveal true trends
-- Traders use these to identify support/resistance levels
SELECT date, close,
  AVG(close) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg_7d,
  AVG(close) OVER (ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS moving_avg_30d
FROM aapl;
