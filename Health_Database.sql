select top 50*
from health;

-- 1. Count & Percentage of F vs M that have OCD & -- Average Obsession Score by Gender

WITH data AS (
select gender,
COUNT(patient_id) as patient_count,
CAST((AVG(CAST([y-bocs_score_(obsessions)] AS DECIMAL (10,2)))) AS DECIMAL(10,2)) as avg_obsession_score
from health
group by gender
)

select 
SUM(CASE WHEN gender = 'Male' THEN patient_count ELSE 0 END) as male_count,
SUM(CASE WHEN gender = 'Female' THEN patient_count ELSE 0 END) as female_count,
CAST(ROUND(100.0 * SUM(CASE WHEN gender = 'Male' THEN patient_count ELSE 0 END) / SUM(patient_count),2)AS DECIMAL(10,2))  as pct_male,
CAST(ROUND(100.0 * SUM(CASE WHEN gender = 'Female' THEN patient_count ELSE 0 END) / SUM(patient_count),2)AS DECIMAL(10,2))  as pct_female,
MAX(CASE WHEN gender = 'Male' THEN avg_obsession_score END) AS male_avg_obsession_score,
MAX(CASE WHEN gender = 'Female' THEN avg_obsession_score END) AS female_avg_obsession_score
from data;

-- 2. Count of Patients by Ethnicity and their respective Average Obsession Score

select ethnicity,
COUNT(patient_id) as patient_count,
CAST((AVG(CAST([y-bocs_score_(obsessions)] AS DECIMAL (10,2)))) AS DECIMAL(10,2)) as avg_obsession_score
from health
group by ethnicity
order by patient_count;

-- 3. Number of people diagnosed with OCD MoM

ALTER TABLE health
ALTER COLUMN ocd_diagnosis_date date;

select 
    DATEFROMPARTS(
        YEAR([ocd_diagnosis_date]),
        MONTH([ocd_diagnosis_date]),
        1
    ) as month_start,

    COUNT(patient_id) AS patient_count
from health
group by DATEFROMPARTS(
            YEAR([ocd_diagnosis_date]),
            MONTH([ocd_diagnosis_date]),
            1
         )
order by month_start;

-- 4. What is the most common Obsession Type (Count) & it's respective Average Obsession Score

select obsession_type,
COUNT(patient_id) as patient_count,
 CAST((AVG(CAST([y-bocs_score_(obsessions)] AS DECIMAL (10,2)))) AS DECIMAL(10,2)) as avg_obsession_score 
from health
group by obsession_type
order by patient_count DESC

-- 5. What is the most common Compulsion type (Count) & it's respective Average Obsession Score

select compulsion_type,
COUNT(patient_id) as patient_count,
 CAST((AVG(CAST([y-bocs_score_(obsessions)] AS DECIMAL (10,2)))) AS DECIMAL(10,2)) as avg_obsession_score
from health
group by compulsion_type
order by patient_count DESC