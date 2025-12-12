# 🚴‍♂️ Cyclistic Bike-Share Case Study — Google Data Analytics Capstone  
### *Excel • SQL • R | End-to-End Data Analytics Project*

![Visitors](https://visitor-badge.laobi.icu/badge?page_id=abdullahahmadd.cyclistic-bike-share-case-study)
![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-005C84?style=for-the-badge&logo=database&logoColor=white)
![R](https://img.shields.io/badge/R-276DC3?logo=r&logoColor=white&style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
---

# Table of Contents  
  
1. [Overview](#-overview)  
2. [Project Files](#-project-files)  
3. [Dataset Story](#-dataset-story)  
4. [Tools and Technologies Used](#-tools-and-technologies-used)  
5. [Skills Demonstrated](#-skills-demonstrated)  
6. [ASK Phase — Define the Business Task](#-ask-phase--define-the-business-task)  
7. [PREPARE Phase — Data Source and Credibility](#-prepare-phase--data-source-and-credibility)  
8. [PROCESS Phase — Cleaning and Feature Engineering](#-process-phase--cleaning-and-feature-engineering)  
9. [ANALYZE Phase — Key Findings](#-analyze-phase--key-findings)  
10. [SHARE Phase — Visualizations](#-share-phase--visualizations)  
11. [ACT Phase — Final Recommendations](#-act-phase--final-recommendations)

---

## 📌 Overview

This project analyzes data from the **Cyclistic Divvy Q1 2020 bike-share dataset**, originally containing over **300,000 rows**.  
To ensure smooth performance across tools, the dataset was reduced to **8,036 rows** while preserving distribution and patterns.

The goal of the project is to understand **how casual riders and annual members use Cyclistic bikes differently**, and develop **data-driven marketing recommendations** to increase annual membership conversions.

The analysis follows the **Google Data Analytics process**:  
**Ask → Prepare → Process → Analyze → Share → Act**

Work was performed in **Excel**, **MySQL**, and **RStudio (tidyverse, lubridate, ggplot2)**.

---

## 📂 Project Files

| File Name | Description |
|-----------|-------------|
| `cyclistic_analysis.xlsx` | Excel cleaning, pivot tables, dashboards, KPI metrics |
| `cyclistic_analysis.sql` | SQL cleaning + analysis queries |
| `cyclistic_analysis.R` | R data cleaning, analysis, ggplot visualizations |
| `cyclistic_workspace.RData` | Saved R environment |

---

## 🧵 Dataset Story

### **Original Attributes (Raw Dataset)**
- `ride_id`, `rideable_type`  
- `started_at`, `ended_at`  
- `start_station_name`, `start_station_id`  
- `end_station_name`, `end_station_id`  
- `start_lat`, `start_lng`, `end_lat`, `end_lng`  
- `member_casual`

### **New Attributes Created (Process Phase)**

**Excel:** `ride_length`, `day_of_week`, `start_hour`, `start_month`  
**SQL:** `started_at_dt`, `ended_at_dt`, `ride_length_secs`, `ride_length_mins`  
**R:** `weekday`, `started_hour_new`, `started_month_new`, `started_date`, `is_weekend`

These engineered features allowed deeper behavioral analysis.

---

## ⚙️ Tools & Technologies Used

- **Microsoft Excel** – preprocessing, feature engineering, pivot tables, dashboards  
- **MySQL 8.0 Workbench** – data cleaning, datetime parsing, SQL aggregations  
- **RStudio** – data wrangling, statistical summaries, ggplot2 visualizations  
- **tidyverse, dplyr, lubridate, ggplot2** – robust data manipulation and plotting  
- **GitHub** – project documentation  

---

## 🎯 Skills Demonstrated

- Data Cleaning & Preparation  
- Feature Engineering  
- SQL Aggregations & Date/Time Manipulation  
- R Programming (tidyverse pipelines)  
- Data Visualization (Excel & ggplot2)  
- Exploratory Data Analysis (EDA)    
- Reporting & Documentation

---

## 🧠 ASK Phase — Define the Business Task

**Key Question:**  
> How do annual members and casual riders use Cyclistic bikes differently?

Cyclistic aims to **convert casual riders into annual members** using targeted marketing campaigns.

---

## 🗄 PREPARE Phase — Data Source & Credibility

- Dataset: Divvy Q1 2020 public data  
- License: Motivate International Inc.  
- No PII included  
- Data stored in Excel, MySQL, and RStudio  
- Follows ROCCC: Reliable, Original, Comprehensive, Current, Cited  

---

## 🧹 PROCESS Phase — Cleaning & Feature Engineering

### I. Excel
- Converted timestamps  
- Calculated ride length  
- Added weekday, hour, and month columns  
- Removed invalid or zero-duration rides  

---

### II. SQL (MySQL 8.0 Workbench)
  
All SQL outputs are stored in the `Cylistic_analysis_results/` folder.

| 1. Total Rows Loaded |
|----------------------|
| ![Total Rows](Cylistic_analysis_results/total_rows_sql.png) |
| Shows the number of successfully imported rows in MySQL after loading the dataset. |

---

| 2. Missing Values Check |
|-------------------------|
| ![Missing Values](Cylistic_analysis_results/missing_values_sql.png) |
| Displays the count of missing or NULL values across all dataset columns. |

---

| 3. First 10 Rows Preview |
|--------------------------|
| ![Preview 10 Rows](Cylistic_analysis_results/10_rows_sql.png) |
| Shows a preview of the first 10 rows to verify data formatting and integrity. |

---

| 4. Average Ride Duration (SQL) |
|--------------------------------|
| ![Average Ride Duration](Cylistic_analysis_results/avg_ride_minutes_sql.png) |
| Calculates the mean ride duration across all rides using SQL aggregate functions. |

---

| 5. Maximum Ride Duration |
|---------------------------|
| ![Max Ride Duration](Cylistic_analysis_results/max_ride_minutes.png) |
| Identifies the longest ride duration recorded in the dataset. |

---

| 6. Ride Length (Seconds & Minutes) |
|------------------------------------|
| ![Ride Length in Seconds](Cylistic_analysis_results/ride_length_and_secs_sql.png) |
| Shows computed ride lengths converted into seconds and minutes for deeper analysis. |

---

| 7. Most Active Day of Week |
|-----------------------------|
| ![Most Active Day](Cylistic_analysis_results/hightest_day_of_week_sql.png) |
| Reveals which weekday had the highest number of total rides. |

---

| 8. Avg Ride Duration — Member vs Casual |
|-----------------------------------------|
| ![Avg Ride Duration User Type](Cylistic_analysis_results/member_casual_avg_ride_mints_Sql.png) |
| Compares average ride duration between casual riders and annual members. |

---

| 9. Total Rides — Member vs Casual |
|-----------------------------------|
| ![Total Rides User Type](Cylistic_analysis_results/member_casual_total_rides_sql.png) |
| Displays total trip counts for each rider category (member vs casual). |

---

| 10. Hourly Ride Distribution |
|------------------------------|
| ![Hourly Ride Distribution](Cylistic_analysis_results/hightest_rides_by_hour_sql.png) |
| Shows peak riding hours, indicating commuting and leisure time patterns. |

---

| 11. Monthly Ride Distribution |
|-------------------------------|
| ![Monthly Ride Distribution](Cylistic_analysis_results/hightest_rides_by_month_sql.png) |
| Displays the number of rides per month to highlight seasonal trends. |
  

---

### III. R (tidyverse + lubridate)
- Cleaned names  
- Parsed timestamps  
- Calculated duration  
- Derived weekday/weekend/hour/month  
- Performed grouped summaries  
- Built ggplot2 charts  

---

## 📊 ANALYZE Phase — Key Findings

### I. **Ride Duration**
- Casual riders have **longer rides** (~388 mins avg)  
- Members take **shorter, more consistent rides** (~279 mins avg)

### II. **Usage Volume**
- Members contribute **over 90% of all rides**

### III. **Day Patterns**
- Casuals: **mid-week + weekend peaks**  
- Members: **weekday stable usage (commuting)**  

### IV. **Hourly Patterns**
- Members peak: **7–9 AM** & **4–6 PM**  
- Casuals: **mid-day & afternoon**  

### V. **Geographic Hotspots**
Common casual rider locations:  
- Michigan Ave & Washington St  
- Millennium Park  
- Lake Shore Dr & Monroe St  

---

## 📈 SHARE Phase — Visualizations

## I. Excel Visualizations

| Excel Dashboard |
|----------------|
| ![excel_dashboard](Cylistic_analysis_results/excel_dashboard.png) |
| Provides an overview of key KPIs, ride distribution trends, and user-type comparisons. |

---

## II. R Visualizations

| 1. Ride Length Summary |
|--------------------------------------|
| ![ride_length_summary_R](Cylistic_analysis_results/ride_length_summary_R.png) |
| Shows the overall spread and distribution of ride durations across all trips. |

---

| 2. Average Ride Length by User Type |
|----------------------------------------------------|
| ![avg_ride_length_R](Cylistic_analysis_results/avg_ride_length_R.png) |
| Demonstrates that casual riders take significantly longer rides compared to members. |

---

| 3. Average Ride Length by Day of Week |
|------------------------------------------------------|
| ![avg_ride_length_by_week_of_day_R](Cylistic_analysis_results/avg_ride_length_by_week_of_day.png) |
| Highlights variations in ride length across weekdays and weekends for both user types. |

---

| 4. Number of Rides by Day |
|------------------------------------------|
| ![number_of_rides_by_day_R](Cylistic_analysis_results/number_of_rides_by_day_R.png) |
| Displays total ride volume for each day of the week. |

---

| 5. Hourly Usage Pattern by User Type |
|-----------------------------------------------------|
| ![hourly_usage_pattern_by_user_type_R](Cylistic_analysis_results/hourly_usage_pattern_by_user_type_R.png) |
| Shows differing peak hours for members (commuting) and casual riders (leisure). |

---

| 6. Top Start Stations by User Type |
|---------------------------------------------------|
| ![top_start_stations_by_user_type_R](Cylistic_analysis_results/top_start_stations_by_user_type_R.png) |
| Lists the most frequently used start stations categorized by rider type. |
---

## 🧭 ACT Phase — Final Recommendations

### I. **Target casual riders at leisure-heavy stations**  
Focus: Millennium Park, Lakefront, Michigan Ave.  
Use QR codes, app offers, and tourist-focused promotions.

### II. **Introduce weekend / tourist-friendly membership options**  
Examples:  
- **Weekend Unlimited Pass**  
- **Tourist → Monthly Upgrade Discount**

### III. **Leverage digital media to convert casual riders**  
Highlight:  
- Cost savings  
- Convenience  
- Unlimited rides  
- Rewards/points  
- No per-ride charges  

These align well with casual rider behaviors.

---
