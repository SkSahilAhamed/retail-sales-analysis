# Retail Sales Analysis Project

## Overview
This project analyzes retail transaction data to uncover key business insights related to revenue trends, product performance, customer behavior, and geographic sales distribution.

The analysis is performed using Python, SQL, and Tableau, with results presented through an interactive dashboard.

---

## Objectives
- Analyze overall revenue and sales performance  
- Identify top-performing products  
- Understand customer purchasing behavior  
- Examine geographic distribution of sales  
- Detect seasonal trends in revenue  

---

## Tools & Technologies
- Python (Pandas, NumPy, Matplotlib)  
- SQL (SQLite)  
- Tableau (Dashboard & Visualization)  
- Excel (Data Source)  

---

## Key Metrics
- Total Revenue: 16.69M  
- Total Orders: ~35K  
- Average Order Value: ~466  
- Total Customers: ~4K  

---

## Key Insights

- Revenue shows strong seasonal trends, peaking in October–November, indicating pre-holiday demand.  
- A small number of products contribute a significant portion of total revenue, showing product concentration.  
- The United Kingdom dominates sales, highlighting strong geographic dependency.  
- A large portion of customers are one-time buyers, indicating potential customer retention challenges.  
- High average order value suggests bulk purchasing behavior.  

---

## Dashboard
The Tableau dashboard provides an interactive view of:
- Monthly Revenue Trend  
- Top Products by Revenue  
- Top Countries by Revenue  
- Key Performance Indicators (KPIs)  

---

## Project Structure

```
Retail Project/
├── data/
│   └── processed/
│       └── retail_cleaned.csv
│
├── notebooks/
│   └── 01_data_cleaning_eda.ipynb
│
├── sql/
│   └── 02_sql_analysis.sql
│
├── tableau/
│   └── retail_sales_dashboard.twbx
│
└── README.md
```

---

## Data Notes
- Non-product entries such as postage and manual adjustments were removed during data cleaning.  
- Missing customer IDs were excluded from customer-level analysis.  

---

## Conclusion
This project demonstrates how data analysis can be used to generate actionable business insights, highlighting opportunities for improving customer retention, diversifying geographic markets, and optimizing product strategy.

---

## Future Improvements
- Customer segmentation using RFM analysis  
- Predictive sales modeling  
- Power BI dashboard for comparison  

---

## Author
Sk Sahil Ahamed
