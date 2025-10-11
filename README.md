# Auto Claims Project
This project analyzes an auto insurance claims dataset to explore claim trends, fraud patterns, and customer behavior using SQL and Excel.
Created cleaned datasets, pivot tables, and visualizations to reveal insights about claims and customer patterns.

## Excel Work
**Skills Used:**
  * TRIM(), IF(), PROPER(), Find & Replace (Ctrl + H)
  * removed duplicates, verified numeric totals, formatted dates and time

**Summary of Steps**
  * Checked for duplicates
  * Removed colums with missing values
  * Fixed mispellings and standardized text
  * Converted “months as customer” into years for analysis
  * Fromatted dates nad incident hours

## SQL Work (PostgreSQL)
**Skils Used:**
 * Agregate functions(AVG(), SUM()), GROUP BY
 * Conditional 'and Filtering logic (e.g. 'Case', 'Where')

**Summary Of Steps**
 * Calculated average and total claim amounts by age group, customer tenure, incident type, and state.
 * Filtered data for fraud cases using Boolean conditions and aggregated counts, sums, and averages.
 * Sorted outputs using ORDER BY to highlight key findings, such as highest total claims

## Visuals

<img width="426" height="171" alt="image" src="https://github.com/user-attachments/assets/9e66bf21-a1f6-4db4-b0fc-3a0f114e1bd4" />
*This SQL query calculates the number of claims and average total claim amount for each age group, highlighting trends across different customer age ranges.*


<img width="563" height="188" alt="image" src="https://github.com/user-attachments/assets/c42115c9-e468-47f4-8186-6d753b2ae6ec" />

*This PivotTable summarizes fraud claims by incident type. It shows both the number of fraudulent claims and the total claim amount for each type.*



<img width="630" height="501" alt="Screenshot 2025-10-11 164430" src="https://github.com/user-attachments/assets/2c8d6fe9-2525-416d-b1fb-fb88f84f52ea" />

*This pie chart shows the distribution of fraudulent claims by state. New York and South Carolina account for the highest proportion of fraud cases, together making up nearly 53% of total frauds.*


**Note:** The PivotTables and charts above are based on SQL queries executed in PostgreSQL


