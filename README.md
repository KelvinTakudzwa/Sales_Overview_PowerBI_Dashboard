1. **Analytics.pbix** - Power BI dashboard file.
2. **CSV and SQL files** - Representing data and queries for dimensions (DIM) and facts (FACT).
3. **SalesBudget.xlsx** - Budget insights.

# Sales Analysis Dashboard

## Project Overview
The **Sales Analysis Dashboard** is a dynamic and interactive Power BI report designed to provide actionable insights into sales performance. It allows stakeholders to understand trends, identify key drivers, and make informed business decisions. This dashboard visualizes critical metrics such as total revenue, profit, sales by region, product performance, and budget comparisons.

## Features
- **Revenue Trends**: Analyze sales over time with interactive filters for year, month, and quarter.
- **Regional Analysis**: Identify the best-performing regions and compare sales geographically.
- **Product Insights**: Understand which products drive the most revenue and profit.
- **Customer Segmentation**: Gain insights into customer demographics and purchasing behaviors.
- **Budget vs. Actual**: Compare actual sales performance against planned budgets.
- **Dynamic Filtering**: Drill down into specific time periods, regions, or products for in-depth analysis.

## Data Sources
The dashboard is built using the following datasets:
1. **Dimension Tables**:
   - `DIM_Calendar.csv` / `DIM_Calendar.sql`: Calendar data for time-based analysis.
   - `DIM_Customers.csv` / `DIM_Customers.sql`: Customer details such as demographics and segments.
   - `DIM_Products.csv` / `DIM_Products.sql`: Information about product categories and subcategories.
   
2. **Fact Table**:
   - `FACT_InternetSales.csv` / `FACT_InternetSales.sql`: Transactional sales data with revenue and profit metrics.

3. **Sales Budget**:
   - `SalesBudget.xlsx`: Planned sales budgets for comparison with actual performance.

## Technologies Used
- **Power BI Desktop**: To build and design the dashboard.
- **Power Query**: For data cleaning and transformation.
- **DAX (Data Analysis Expressions)**: For creating calculated measures and custom insights.

## Key Insights
- **Revenue Growth**: Trends indicate a strong upward trajectory over the past years.
- **Regional Performance**: Region A contributed 40% of total sales, outperforming other regions.
- **Product Analysis**: Product X has the highest sales volume, while Product Y has a better profit margin.
- **Customer Loyalty**: Most sales are from repeat customers, showcasing strong customer retention.
- **Budget Insights**: Budget adherence varies by region, with Region B exceeding targets by 15%.

## How to Use the Dashboard
1. Download the `.pbix` file: [Analytics.pbix](Analytics.pbix).
2. Open the file in **Power BI Desktop**.
3. Import the associated CSV/SQL data files if not already embedded.
4. Explore the interactive dashboard using filters and drill-down options.

## Author
This project was developed by **Kelvin Takudzwa**.
