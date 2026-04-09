# NYC-Taxi-Data-Analysis
Analyzing 30,000 + NYC records using SQL and Excel interactive dashboard. This is to identify regional demand and operational risk.
## Project Overview
This project involves a comprehensive end-to-end analysis of 30,000+ NYC taxi trip records. Utilizing **SQL (Microsoft Access)** for data engineering and **Excel** for business intelligence, I transformed raw transactional data into actionable insights focused on customer loyalty, regional demand, and operational efficiency.
  <p align="center">
  <img src="https://github.com/user-attachments/assets/fedffa8a-9995-403c-bb20-c1aeafa0f134" width="800" alt="NYC Taxi Analysis Dashboard">
</p>

## Key Insights

* **Market Distribution:** One of my main discoberies is that 28% of all total trip volumes comes from Staten Island , I identified it as a primary service hub within this dataset.
<p align="center">
  <img src="https://github.com/user-attachments/assets/5844e2df-48cc-448d-9113-34fca32aebb2" width="500" alt="NYC Taxi Analysis Dashboard">
</p>

* **Customer Loyalty:** I Segmented the top 1% of riders in other to analyze the repeat-usage patterns and their revenue contribution.
<p align="center">
  <img src="https://github.com/user-attachments/assets/1faa7480-8908-4486-8fb8-e75f36933ab5" width="500" alt="NYC Taxi Analysis Dashboard">
</p>

* **Behavioral Analysis:** In this experiment I discovered that solo travelers and large groups (7+ passengers) cover the longest average distances, suggesting that specific use cases like airport transfers.
<p align="center">
  <img src="https://github.com/user-attachments/assets/539ff1b5-8379-438a-87bc-02fbf6201ad1" width="500" alt="NYC Taxi Analysis Dashboard">
</p>

* **Operational Risk:**  'Cash' and 'Unknown' payment methods was discovered to account for the majority of transaction failures, highlighting areas for fintech-driven process improvement.
<p align="center">
  <img src="https://github.com/user-attachments/assets/e6d12d44-bbd2-4a49-bbf8-7bc527d86f23" width="500" alt="NYC Taxi Analysis Dashboard">
</p>

## Technical Stack
* **Database Management:** Microsoft Access (SQL)
* **Data Visualization:** Excel (PivotCharts, Dashboards)
* **Analytical Techniques:** Data Aggregation, SQL Join Operations, Risk Modeling

##  Project Structure
* `Dashboard/`: Final Excel dashboard containing four key visualizations.
* `SQL_Queries/`: Raw `.sql` files used for data extraction and cleaning.
* `Data/`: (Optional) Summary data or links to public datasets used.

##  Sample SQL Logic
I utilized advanced SQL queries to engineer the data before visualization. For example, to calculate the average distance per passenger group while filtering for valid data:

```sql
SELECT PassengerCount, Avg(TripDistance) AS AvgTripDistance, Count(*) AS NumberOfTrips
FROM NYCTaxiTrips
WHERE TripDistance > 0
GROUP BY PassengerCount;
