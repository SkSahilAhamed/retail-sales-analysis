# Retail Sales Analysis Project

## Overview
This project analyzes retail transaction data to uncover key business insights related to revenue trends, product performance, and geographic sales distribution.

The analysis is performed using Python, SQL, and Tableau, with results presented through an interactive dashboard.

---

## Objectives
- Analyze overall revenue and sales performance  
- Identify top-performing products  
- Examine geographic distribution of sales  
- Detect seasonal trends in revenue  

---

## Tools & Technologies
- Python (Pandas, NumPy, Matplotlib)  
- SQL (SQLite)  
- Tableau (Dashboard & Visualization)  

---

## Key Metrics
- Total Revenue: 16.40M  
- Total Orders: 35,142  
- Average Order Value: 466.55  

---

## Key Insights
- Revenue peaks in October–November, indicating strong seasonal demand  
- A small group of products drives a large share of total revenue  
- The United Kingdom contributes the majority of sales, showing geographic concentration  
- High average order value suggests bulk purchasing behavior  

---

## Dashboard

### Preview
![Dashboard](dashboard.png)

### Download Tableau Workbook
You can download and explore the Tableau dashboard here:  
https://drive.google.com/file/d/1BLGyeP7nh_4icvneTYtaSt0IAA9mZ0np/view?usp=drive_link 

Note: The workbook requires the dataset to be downloaded and connected manually.

---

## Dataset

Due to GitHub file size limitations, the dataset is not included in this repository.

Download the cleaned dataset here:  
https://drive.google.com/file/d/1fcC6FGDrBirU0qtBuTytG_6vEgNLB--D/view?usp=drive_link  

Original dataset:  
https://archive.ics.uci.edu/ml/datasets/online+retail+ii  

---

## How to Open the Tableau Dashboard

1. Download the dataset from the link above  
2. Open Tableau Desktop  
3. Open `retail_sales_dashboard.twb`  
4. When prompted, connect the downloaded CSV file  
5. The dashboard will load automatically  

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


---

## Data Notes
- Non-product entries such as postage and manual adjustments were removed during data cleaning  
- Missing customer IDs were excluded from analysis  

---


---


## Conclusion
This project demonstrates how data analysis can be used to identify revenue patterns, key products, and market concentration, enabling better business decision-making.

---

## Author
Sk Sahil Ahamed
