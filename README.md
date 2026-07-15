# OCD Patient Analytics

## Project Overview

This project focuses on analyzing **Obsessive-Compulsive Disorder (OCD)** patient data using **Python, Microsoft SQL Server, and Power BI**. The workflow includes data cleaning, exploratory data analysis (EDA), SQL-based healthcare analysis, KPI generation, and dashboard visualization.

The objective is to identify patient demographics, diagnosis trends, obsession and compulsion patterns, and symptom severity to support data-driven healthcare insights.


---

## Project Workflow

### 1. Data Preparation (Python)

- Imported the dataset using **Pandas**
- Performed exploratory data analysis (EDA)
- Checked for missing values and data inconsistencies
- Renamed columns using snake_case for consistency
- Loaded the cleaned dataset into **Microsoft SQL Server** using SQLAlchemy

### Dataset Structure and Data Types

![Dataset Structure](https://github.com/muhammed-swalih296/OCD_Patient_Analytics/blob/main/OCD_Screenshots/df.info.png)

### Summary Statistics

![Summary Statistics](https://github.com/muhammed-swalih296/OCD_Patient_Analytics/blob/main/OCD_Screenshots/df.isnull.sum().png)

---

### 2. SQL Analysis

Performed business-style healthcare analysis to answer questions such as:

- Gender-wise distribution of OCD patients
- Percentage of male and female patients
- Average obsession score by gender
- Patient distribution by ethnicity
- Monthly OCD diagnosis trend
- Most common obsession types
- Most common compulsion types
- Average obsession score across obsession and compulsion categories

### Geder Distribution
![SQL Result 1](screenshots/sql_results_1.png)

### Monthly Diagnosis Trend
![SQL Result 2](screenshots/sql_results_2.png)

### Ethnicity Analysis
![SQL Result 3](screenshots/sql_results_3.png)


---

### 3. Power BI Dashboard

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
│   ├── dashboard.png
│   ├── sql_results_1.png
│   ├── sql_results_2.png
│   └── python_eda.png
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
