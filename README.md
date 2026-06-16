# 📈 Apple Stock (AAPL) Market Data Analysis using SQL

## 🎯 Project Overview
This project focuses on the end-to-end data ingestion, cleaning, and multi-dimensional analysis of historical market data for Apple Inc. (AAPL) spanning over a decade (**2010 – 2021**). 

Using **MySQL**, I developed a robust suite of 17 analytical queries to transition raw financial data into actionable trading insights. The project covers core financial metrics, including trend identification, volatility tracking, gap analysis, and advanced time-series forecasting metrics like moving averages.

---

## 📊 Dataset Profile
* **Asset:** Apple Inc. (AAPL) Stock
* **Timeline:** 2010 – 2021 (Covers major economic cycles, product launches, and the 2020 market volatility)
* **Attributes:** `date`, `open`, `high`, `low`, `close`, `volume`

---

## 🛠️ Tech Stack & SQL Concepts Applied
* **Database Engine:** MySQL
* **Data Cleaning:** Handling NULL values, data type formatting, and structural validation.
* **Intermediate Aggregations:** `GROUP BY`, `HAVING`, `CASE WHEN` conditional counting, and Date functions (`YEAR()`, `MONTH()`).
* **Advanced Analytics (Window Functions):** `LAG()` for day-over-day tracking, `RANK()` for benchmarking performance, and `OVER(ROWS BETWEEN)` for moving averages.

---

## 🔍 Analytical Coverage (17 Queries)

The repository is structured to take a recruiter through a logical analytical workflow:

### 1. Data Setup & Preprocessing
* `create_table.sql`: Defines the optimized schema for financial time-series data.
* `clean_data.sql`: Standardizes date formats and handles structural anomalies.
* `data_range.sql`: Verifies data integrity and timeline boundaries.

### 2. Descriptive & Extremes Analysis
* `high_&_low.sql`: Identifies historical price ceilings and floors.
* `most_volume_days.sql` & `least_volume_days.sql`: Isolates periods of extreme institutional trading interest.
* `avg_volume_per_year.sql`: Tracks liquidity shifts in AAPL over a 12-year horizon.

### 3. Market Behavior & Trading Patterns
* `green_Vs_red_days.sql`: Analyzes market sentiment by comparing bullish vs. bearish closing ratios.
* `most_gain_day.sql` & `pct_change.sql`: Tracks maximum single-day yields and daily delta percentages.
* `opening_gap.sql`: Measures overnight market sentiment by analyzing opening vs. previous closing gaps.
* `trend_of_the_day.sql`: Classifies intra-day price movements.

### 4. Advanced Time-Series Insights (New Updates)
* `moving_average.sql`: Computes 7-day and 30-day rolling price averages to smooth out market noise.
* `day_over_day_change.sql`: Implements `LAG()` window functions to calculate precise daily returns.
* `monthly_performance.sql`: Rolls up daily volatility into clean monthly summaries.
* `best_worst_months.sql`: Implements `RANK()` to grade the highest and lowest-performing months historically.

---

## 📈 Key Metrics & Findings
*(Tip: Run your updated queries on MySQL and swap out these placeholders with your exact numbers to make your profile completely bulletproof!)*

* 📅 **Timeline Monitored:** Jan 2010 – Dec 2021
* 🟢 **Market Sentiment Ratio:** [1571] Green Days vs. [1362] Red Days
* 🚀 **Highest Single-Day Gain:** [7.95%] on [2018-12-26]
* 🐋 **Peak Trading Liquidity:** Highest volume recorded was [1,892,319,700] shares on [2011-01-18]

---

## 🚀 How to Run This Project
1. Clone this repository:
   ```bash
   git clone [https://github.com/sidmishra-git/stocks-sql-analysis.git](https://github.com/sidmishra-git/stocks-sql-analysis.git)
2. Create a database in your local environment (MySQL Workbench / Command Line).

3. Execute create_table.sql to generate the baseline schema.

4. Import the dataset located in the /data directory.

5. Run clean_data.sql to verify constraints, and explore any of the files in the /query directory to generate data insights!
