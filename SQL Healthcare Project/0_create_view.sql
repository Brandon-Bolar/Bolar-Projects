CREATE VIEW cohort_analysis AS
WITH patient_revenue AS (
    SELECT
        o.patient_id,
        o.length_of_stay_days,
        o.admission_date,
        SUM(o.total_charges_usd) / NULLIF(o.length_of_stay_days, 0) AS average_revenue_per_day,
        MAX(p.age) AS age
    FROM outcomes o
    INNER JOIN patients p ON p.patient_id = o.patient_id
    GROUP BY
        o.patient_id,
        o.length_of_stay_days,
        o.admission_date
),
cohort_data AS (
    SELECT
        pr.*,
        MIN(admission_date) OVER (PARTITION BY patient_id) AS first_admission_date
    FROM patient_revenue pr
),
cohort_counts AS (
    SELECT
        EXTRACT(YEAR FROM first_admission_date) AS cohort_year,
        COUNT(DISTINCT patient_id) AS num_patients
    FROM cohort_data
    GROUP BY
        EXTRACT(YEAR FROM first_admission_date)
)
SELECT
    cd.patient_id,
    cd.length_of_stay_days,
    cd.admission_date,
    cd.average_revenue_per_day,
    cc.num_patients,
    cd.age,
    cd.first_admission_date,
    EXTRACT(YEAR FROM cd.first_admission_date) AS cohort_year
FROM cohort_data cd
INNER JOIN cohort_counts cc ON cc.cohort_year = EXTRACT(YEAR FROM cd.first_admission_date);