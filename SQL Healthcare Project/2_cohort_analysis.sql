--Question: For each cohort year, what is the total revenue and revenue per patient?
WITH admission_payment AS (
    SELECT
        cohort_year,
        length_of_stay_days,
        SUM(average_revenue_per_day * length_of_stay_days) AS total_revenue,
        COUNT(DISTINCT patient_id) AS total_patients,
        SUM(average_revenue_per_day * length_of_stay_days)
            / COUNT(DISTINCT patient_id) AS patient_total_revenue
    FROM cohort_analysis
    GROUP BY
        cohort_year,
        length_of_stay_days
)
--Question: For each length of stay, how much revenue was generated and what percentage of all revenue does that represent?
SELECT
    length_of_stay_days,
    SUM(total_revenue) AS total_revenue,
    SUM(total_revenue)
        / SUM(SUM(total_revenue)) OVER () * 100
        AS percentage_of_total_revenue
FROM admission_payment
GROUP BY length_of_stay_days
ORDER BY length_of_stay_days;
