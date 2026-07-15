# OCD Patient Analytics

## Project Overview

This project focuses on analyzing **Obsessive-Compulsive Disorder (OCD)** patient data using **Python, Microsoft SQL Server, and Power BI**. The workflow includes data cleaning, exploratory data analysis (EDA), SQL-based healthcare analysis, KPI generation, and dashboard visualization.

The objective is to identify patient demographics, diagnosis trends, obsession and compulsion patterns, and symptom severity to support data-driven healthcare insights.

---

### 1. Power BI Dashboard

Designed an interactive dashboard to visualize:

- Total Patient Count
- Average Obsession Score
- Average Compulsion Score
- Monthly OCD Diagnosis Trend
- Patient Distribution by Ethnicity
- Average Obsession Score by Gender
- Count of Patients by Obsession Type
- Count of Patients by Compulsion Type

### Health Analytics Dashboard

![Dashboard](https://github.com/muhammed-swalih296/OCD_Patient_Analytics/blob/main/OCD_Screenshots/dashboard.png)


Interactive slicers include:

- Gender
- Ethnicity
- Obsession Type
- Compulsion Type

---

## Project Workflow

### 2. Data Preparation (Python)

- Imported the dataset using **Pandas**
- Performed exploratory data analysis (EDA)
- Checked for missing values and data inconsistencies
- Renamed columns using snake_case for consistency
- Loaded the cleaned dataset into **Microsoft SQL Server** using SQLAlchemy

### Dataset Structure and Data Types

![Dataset Structure](https://github.com/muhammed-swalih296/OCD_Patient_Analytics/blob/main/OCD_Screenshots/df.info.png)

### Data Quality Check

![Summary Statistics](https://github.com/muhammed-swalih296/OCD_Patient_Analytics/blob/main/OCD_Screenshots/df.isnull.sum().png)

---

### 3. Healthcare Analysis Using SQL

Performed business-style healthcare analysis to answer questions such as:

- Gender-wise distribution of OCD patients
- Percentage of male and female patients
- Average obsession score by gender
- Patient distribution by ethnicity
- Monthly OCD diagnosis trend
- Most common obsession types
- Most common compulsion types
- Average obsession score across obsession and compulsion categories

### Gender Distribution
![SQL Result 1](https://github.com/muhammed-swalih296/OCD_Patient_Analytics/blob/main/OCD_Screenshots/gender%20analysis.png)

### Monthly Diagnosis Trend
![SQL Result 2](https://github.com/muhammed-swalih296/OCD_Patient_Analytics/blob/main/OCD_Screenshots/monthly%20analysis.png)

### Ethnicity Analysis
![SQL Result 3](https://github.com/muhammed-swalih296/OCD_Patient_Analytics/blob/main/OCD_Screenshots/ethnicity.png)


---


## Dataset Information

- **Rows:** 1,500
- **Columns:** 17

### Key Features

- Patient Demographics
  - Age
  - Gender
  - Ethnicity
  - Marital Status
  - Education Level

- Clinical Information
  - OCD Diagnosis Date
  - Obsession Type
  - Compulsion Type
  - Family History of OCD

- Health Indicators
  - Y-BOCS Obsession Score
  - Y-BOCS Compulsion Score
  - Depression Diagnosis
  - Anxiety Diagnosis
  - Medication Taken

---

## Tools & Technologies

- Python
  - Pandas
  - NumPy
  - SQLAlchemy

- Microsoft SQL Server

- Power BI

---

## Repository Structure

```
OCD_Patient_Analytics/
│
├── dataset/
│   └── OCD_Patient_Dataset.csv
│
├── python/
│   └── data_cleaning.ipynb
│
├── sql_queries/
│   └── analysis.sql
│
├── dashboard/
│   ├── OCD_Analytics.pbix
│   └── dashboard.png
│
├── report/
│   └── OCD_Patient_Analytics_Report.pdf
│
├── screenshots/
│   ├── python_info.png
│   ├── python_summary_statistics.png
│   ├── sql_gender_analysis.png
│   ├── sql_monthly_trend.png
│   ├── sql_ethnicity_analysis.png
│   └── powerbi_dashboard.png
│ 
├── README.md
└── LICENSE
```

---

## Key Insights

- Male and female patient counts are nearly equal.
- OCD diagnosis trends fluctuate over time with noticeable monthly variations.
- Harm-related obsessions are the most common obsession type.
- Washing and counting are among the most common compulsions.
- Average obsession scores remain relatively consistent across demographic groups.

---

## Future Improvements

- Develop predictive models for OCD severity using Machine Learning.
- Deploy an interactive dashboard using Power BI Service.
- Include additional clinical and treatment-related datasets for deeper analysis.

---

## Author

**Muhammed Swalih**

GitHub: https://github.com/muhammed-swalih296
