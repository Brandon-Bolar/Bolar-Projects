# SQL - Healthcare Database Analysis

## Overview
Analysis of patient segmentation and admission metrics to continue data driven decision making by hospital management to optimize care and medical services.

## Business Questions
1. **Patient Segmentation:** What percentages are hospital admissions by charges due?
2. **Cohort Analysis:** For each length of stay, how much revenue was generated and what percentage of all revenue does that represent?


## Clean Up Data

**🖥️ Query**: [0_create_view.sql](https://github.com/Brandon-Bolar/Bolar-Projects/blob/main/SQL%20Healthcare%20Project/0_create_view.sql)

- Aggregated admission charges and patient data into revenue metrics
- Calculated average admission revenue per day for cohort analysis
- Created view combining transactions and patient details


### 1. Patient Segmentation

**🖥️ Query**: [1_patient_segmentation.sql](https://github.com/Brandon-Bolar/Bolar-Projects/blob/main/SQL%20Healthcare%20Project/1_patient_segmentation.sql)

- Categorized patients based on average admission charges
- Assigned patients to High, Mid, and Low-Expenditure segments
- Calculated key metrics like percentages from average admission fees

📊 **Key Findings:**
- High-Expenditure segment (25% of patients) drives 66.9% of revenue 
- Mid-Expenditure segment (50% of patients) generates 29.4% of revenue 
- Low-Expenditure segment (25% of patients) accounts for 3.7% of revenue

💡 **Insights & Analysis**
-   Monitor that management doesn't engage in disproportionate attention toward high-expenditure patient admissions.
-   Adapting to the low expenditure demographic by building trust with medical professionals in preventative care because the tier is defined by volume. 


### 2. Patient Revenue by Cohort
**🖥️ Query**: [2_cohort_analysis.sql](https://github.com/Brandon-Bolar/Bolar-Projects/blob/main/SQL%20Healthcare%20Project/2_cohort_analysis.sql)

- Tracked revenue and patient count per cohorts
- Cohorts were grouped by length of stay (days)
- Analyzed daily revenue percentages at a cohort level 

📊 **Key Findings:**  
- Hospital patient revenue fits a declining curve. Including all patients, first day revenue is at $25,042,147 and drops sharply to $480,807 for those still requiring care on day 30. A 98.08% drop in incoming hospital revenue.    

💡 **Analysis & Insights:**    
- The first days of hospital admissions are the key to financial stability so operational efficiency should be concentrated there. 


## Technical Details
- **Database:** PostgreSQL
- **Analysis Tools:** PostgreSQL, DBeaver
- **Editing** ChatGPT


## Special Thanks 
- [Healthcare Dataset: Patients, Costs, Outcomes](https://www.kaggle.com/datasets/sauryayan/synthetic-healthcare-records-and-financial-outcomes)
- Inspired by: Luke Barousse - Youtube SQL Series
- GeeksforGeeks

