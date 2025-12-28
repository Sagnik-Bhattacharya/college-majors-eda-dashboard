-- 1. Top 10 Highest Paying Majors
SELECT 
    Major,
    Major_category,
    Median AS median_salary
FROM all_ages
ORDER BY Median DESC
LIMIT 10;

-- 2. Majors with Lowest Unemployment Rate
SELECT 
    Major,
    Major_category,
    Unemployment_rate
FROM all_ages
ORDER BY Unemployment_rate ASC
LIMIT 10;

-- 3. Top Graduate Premium Majors
SELECT 
    Major,
    Major_category,
    Grad_median,
    Nongrad_median,
    salary_premium
FROM grad_students
ORDER BY salary_premium DESC
LIMIT 10;

-- 4. High-Risk, High-Reward Majors
SELECT 
    Major,
    Major_category,
    Median AS median_salary,
    Unemployment_rate
FROM all_ages
WHERE Median > 80000 AND Unemployment_rate > 0.05
ORDER BY Median DESC;

-- 5. Average Median Salary by Major Category
SELECT 
    Major_category,
    ROUND(AVG(Median), 2) AS avg_median_salary
FROM all_ages
GROUP BY Major_category
ORDER BY avg_median_salary DESC;

-- 6. Median Salary vs Female Representation (Recent Grads)
SELECT 
    Major,
    Major_category,
    ShareWomen,
    Median AS median_salary
FROM recent_grads
ORDER BY ShareWomen DESC;

-- 7. Female Representation in STEM Majors
SELECT 
    Major,
    Major_category,
    ShareWomen,
    Median AS median_salary
FROM women_stem
ORDER BY ShareWomen DESC;

-- 8. Full-Time Employment Analysis
SELECT 
    Major,
    Major_category,
    employment_rate,
    full_time_share,
    salary_spread
FROM all_ages
ORDER BY full_time_share DESC
LIMIT 10;

-- 9. Top 5 Majors with Highest Salary Spread
SELECT 
    Major,
    Major_category,
    salary_spread,
    Median AS median_salary,
    P25th AS p25_salary,
    P75th AS p75_salary
FROM all_ages
ORDER BY salary_spread DESC
LIMIT 5;

-- 10. Majors with Lowest Female Representation in STEM
SELECT 
    Major,
    Major_category,
    ShareWomen
FROM women_stem
ORDER BY ShareWomen ASC
LIMIT 10;

-- 11. Majors with Largest Graduate Employment Advantage
SELECT 
    Major,
    Major_category,
    Grad_full_time_year_round / Grad_employed AS grad_full_time_rate,
    Nongrad_full_time_year_round / Nongrad_employed AS nongrad_full_time_rate,
    (Grad_full_time_year_round / Grad_employed) - 
    (Nongrad_full_time_year_round / Nongrad_employed) AS full_time_advantage
FROM grad_students
ORDER BY full_time_advantage DESC
LIMIT 10;

-- 12. Majors with Low College Job Placement
SELECT 
    Major,
    Major_category,
    College_jobs,
    Non_college_jobs,
    Low_wage_jobs
FROM recent_grads
ORDER BY Non_college_jobs DESC
LIMIT 10;

-- 13. High Salary, High Female Share Majors
SELECT 
    r.Major,
    r.Major_category,
    r.Median AS median_salary,
    r.ShareWomen
FROM recent_grads r
WHERE r.ShareWomen > 0.6 AND r.Median > 70000
ORDER BY r.Median DESC;

-- 14. Top Majors by Employment Rate
SELECT 
    Major,
    Major_category,
    employment_rate
FROM all_ages
ORDER BY employment_rate DESC
LIMIT 10;

-- 15. Majors Where Graduates Earn Less than Non-Grads
SELECT 
    Major,
    Major_category,
    Grad_median,
    Nongrad_median,
    salary_premium
FROM grad_students
WHERE salary_premium < 0
ORDER BY salary_premium ASC;

-- 16. Average Median Salary by Major Category (Recent Grads)
SELECT 
    Major_category,
    ROUND(AVG(Median), 2) AS avg_median_salary
FROM recent_grads
GROUP BY Major_category
ORDER BY avg_median_salary DESC;

-- 17. Majors with High Unemployment Despite Low Salary
SELECT 
    Major,
    Major_category,
    Median AS median_salary,
    Unemployment_rate
FROM all_ages
WHERE Median < 50000 AND Unemployment_rate > 0.05
ORDER BY Unemployment_rate DESC;

-- 18. Top 10 Majors with Most Graduates
SELECT 
    Major,
    Major_category,
    Total
FROM all_ages
ORDER BY Total DESC
LIMIT 10;

-- 19. Majors Where Women Outnumber Men (>50%)
SELECT 
    Major,
    Major_category,
    ShareWomen
FROM recent_grads
WHERE ShareWomen > 0.5
ORDER BY ShareWomen DESC;