# NYC-Taxi-Data-Analysis
Analyzing 30,000 + NYC records using SQL and Excel interactive dashboard. This is to identify regional demand and operational risk.
## Project Overview
This project involves a comprehensive end-to-end analysis of 30,000+ NYC taxi trip records. Utilizing **SQL (Microsoft Access)** for data engineering and **Excel** for business intelligence, I transformed raw transactional data into actionable insights focused on customer loyalty, regional demand, and operational efficiency.
<p align="center">
  <img src=</p><img width="1721" height="1086" alt="image" src="https://github.com/user-attachments/assets/a3b01a34-6331-49ca-b406-b2a0d1cb40de" /> width="800"> </p>
  
## Key Insights
* **Market Distribution:** One of my main discoberies is that 28% of all total treip volumes comes from Staten Island , I identified it as a primary service hub within this dataset.
* **Customer Loyalty:** I Segmented the top 1% of riders in other to analyze the repeat-usage patterns and thier revenue contribution.
* **Behavioral Analysis:** In this experiment I discovered that solo travelers and large groups (7+ passengers) cover the longest average distances, suggesting thatspecific use cases like airport transfers.
* **Operational Risk:**  'Cash' and 'Unknown' payment methods was dicovered to account for the majority of transaction failures, highlighting areas for fintech-driven process improvement.

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
