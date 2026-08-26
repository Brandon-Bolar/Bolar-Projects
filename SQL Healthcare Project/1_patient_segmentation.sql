WITH patient_average_admission AS (
    SELECT
        patient_id,
        SUM(average_revenue_per_day) AS ave_admission
    FROM cohort_analysis
    GROUP BY patient_id
),

patient_segments AS (
    SELECT
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY ave_admission) AS percentile_25th,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY ave_admission) AS percentile_75th
    FROM patient_average_admission
),

segment_values AS (
    SELECT
        paa.patient_id,
        paa.ave_admission,
        CASE
            WHEN paa.ave_admission < ps.percentile_25th THEN '1 - Low-Expenditure'
            WHEN paa.ave_admission <= ps.percentile_75th THEN '2 - Mid-Expenditure'
            ELSE '3 - High-Expenditure'
        END AS patient_segment
    FROM patient_average_admission paa
    CROSS JOIN patient_segments ps
)

SELECT
    patient_segment,
    SUM(ave_admission) AS ave_admission,
    100 * SUM(ave_admission) / SUM(SUM(ave_admission)) OVER () AS ave_percentage,
    COUNT(patient_id) AS patient_count
FROM segment_values
GROUP BY patient_segment
ORDER BY ave_admission DESC
;