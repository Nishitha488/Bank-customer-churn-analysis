# Bank-customer-churn-analysis


End-to-end data analyst project analyzing customer churn for a retail bank using Excel, SQL Server, and Power BI.

## Business Question
Which customer segments are most likely to churn, and what should the bank do to retain them?

## Tools Used
- **Excel (Power Query)** — data cleaning and enrichment
- **SQL Server (SSMS)** — churn analysis using GROUP BY, window functions, and cross-segment queries
- **Power BI** — interactive dashboard with DAX measures and conditional formatting

## Process
1. Cleaned and enriched the raw dataset in Excel (removed unnecessary columns, added Age Group, Balance Category, Tenure Group, Churn Status)
2. Loaded the cleaned data into SQL Server and wrote analysis queries to calculate churn rate by geography, age group, product count, and activity status
3. Built an interactive Power BI dashboard with KPI cards, color-coded charts, and slicers for real-time filtering

## Key Findings
- **Overall churn rate: 20.38%** — roughly 1 in 5 customers left the bank
- **Germany churns at 32.44%**, nearly double Spain (16.67%) and France (16.17%) — driven by the same age and product-count risk factors seen bank-wide, just more concentrated
- **Customers with 3+ products churn dramatically more** (82.7% at 3 products, 100% at 4) than those with exactly 2 products (7.6% — the most stable segment)
- **Churn rises sharply with age**, peaking at 56.21% for the 51-60 age group
- **Inactive members churn nearly 2x more** than active members (26.87% vs 14.27%)
- Credit score showed only a weak relationship with churn and was not a significant driver

## Dashboard Preview
<<img width="1600" height="617" alt="bank dashboard" src="https://github.com/user-attachments/assets/acc5fcfa-153d-4f45-9036-f4b0fe547c34" />



## Files in this Repo
- `customer Churn.xlsx` — cleaned dataset
- `customer churn.sql` — SQL analysis queries
- `Bank customer churn analysis.pbix` — Power BI dashboard file
