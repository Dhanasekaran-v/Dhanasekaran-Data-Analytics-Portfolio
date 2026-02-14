create database salary_survey_db;

use salary_survey_db;

select * from Salary_data;

-- Average salary by industry and gender

SELECT 
    Industry,
    Gender,
    ROUND(AVG(`Annual Salary`), 2) AS avg_salary
FROM 
    salary_data
WHERE 
    `Annual Salary` > 0
    AND Gender IS NOT NULL
    AND Industry IS NOT NULL
GROUP BY 
    Industry, Gender
ORDER BY 
    Industry, Gender;
    
    -- Total Salary Compensation by Job Title
    
    SELECT 
    `Job Title`,
    ROUND(SUM(`Annual Salary` + IFNULL(`Additional Monetary Compensation`, 0)), 2) AS total_compensation
FROM 
    salary_data
WHERE 
    `Annual Salary` IS NOT NULL
GROUP BY 
    `Job Title`
ORDER BY 
    total_compensation DESC;
    
--  Salary Distribution by Education Level 

SELECT 
    `Highest Level of Education Completed` AS education_level,
    ROUND(AVG(`Annual Salary`), 2) AS avg_salary,
    MIN(`Annual Salary`) AS min_salary,
    MAX(`Annual Salary`) AS max_salary
FROM 
    salary_data
WHERE 
    `Annual Salary` IS NOT NULL
GROUP BY 
    education_level
ORDER BY 
    avg_salary DESC;

--  Number of Employees by Industry and Years of Experience 

SELECT 
    Industry,
    `Years of Professional Experience Overall` AS experience_years,
    COUNT(*) AS employee_count
FROM 
    salary_data
WHERE 
    Industry IS NOT NULL 
    AND `Years of Professional Experience Overall` IS NOT NULL
GROUP BY 
    Industry, experience_years
ORDER BY 
    Industry, experience_years;

-- Median Salary by Age Range and Gender
SELECT 
    t1.`Age Range`,
    t1.Gender,
    t1.`Annual Salary` AS median_salary
FROM 
    salary_data t1
JOIN (
    SELECT 
        `Age Range`, 
        Gender,
        COUNT(*) AS count,
        FLOOR((COUNT(*) + 1) / 2) AS median_index
    FROM 
        salary_data
    WHERE 
        `Annual Salary` IS NOT NULL
        AND Gender IS NOT NULL
        AND `Age Range` IS NOT NULL
    GROUP BY 
        `Age Range`, Gender
) t2 ON t1.`Age Range` = t2.`Age Range` 
     AND t1.Gender = t2.Gender
JOIN (
    SELECT 
        `Age Range`,
        Gender,
        `Annual Salary`,
        ROW_NUMBER() OVER (PARTITION BY `Age Range`, Gender ORDER BY `Annual Salary`) AS row_num
    FROM 
        salary_data
    WHERE 
        `Annual Salary` IS NOT NULL
) t3 ON t1.`Age Range` = t3.`Age Range`
     AND t1.Gender = t3.Gender
     AND t1.`Annual Salary` = t3.`Annual Salary`
     AND t3.row_num = t2.median_index;

-- Job Titles with the Highest Salary in Each Country 

WITH ranked_jobs AS (
    SELECT 
        Country,
        `Job Title`,
        `Annual Salary`,
        RANK() OVER (PARTITION BY Country ORDER BY `Annual Salary` DESC) AS rnk
    FROM 
        salary_data
    WHERE 
        `Annual Salary` IS NOT NULL
        AND Country IS NOT NULL
)
SELECT 
    Country, `Job Title`, `Annual Salary`
FROM 
    ranked_jobs
WHERE 
    rnk = 1
ORDER BY 
    Country;
    
-- Average Salary by City and Industry

SELECT 
    City, Industry, ROUND(AVG(`Annual Salary`), 2) AS avg_salary
FROM
    salary_data
WHERE
    `Annual Salary` IS NOT NULL
        AND City IS NOT NULL
        AND Industry IS NOT NULL
GROUP BY City , Industry
ORDER BY City , avg_salary DESC;

-- Percentage of Employees with Additional Monetary Compensation by Gender

SELECT  
    Gender,
    ROUND(
        100 * SUM(CASE  
            WHEN `Additional Monetary Compensation` IS NOT NULL AND `Additional Monetary Compensation` > 0  
            THEN 1 ELSE 0 END
        ) / COUNT(*), 2
    ) AS percentage_with_bonus
FROM  
    salary_data
WHERE  
    Gender IS NOT NULL
GROUP BY 
    Gender;
    

--  Total Compensation by Job Title and Years of Experience

SELECT 
    `Job Title`,
    `Years of Professional Experience Overall` AS experience_years,
    ROUND(SUM(`Annual Salary` + IFNULL(`Additional Monetary Compensation`, 0)), 2) AS total_compensation
FROM 
    salary_data
WHERE 
    `Annual Salary` IS NOT NULL
    AND `Job Title` IS NOT NULL
    AND `Years of Professional Experience Overall` IS NOT NULL
GROUP BY 
    `Job Title`, experience_years
ORDER BY 
    `Job Title`, experience_years;

-- Average Salary by Industry, Gender, and Education Level

SELECT 
    Industry,
    Gender,
    `Highest Level of Education Completed` AS education_level,
    ROUND(AVG(`Annual Salary`), 2) AS avg_salary
FROM 
    salary_data
WHERE 
    `Annual Salary` IS NOT NULL
    AND Industry IS NOT NULL
    AND Gender IS NOT NULL
    AND `Highest Level of Education Completed` IS NOT NULL
GROUP BY 
    Industry, Gender, education_level
ORDER BY 
    Industry, Gender, education_level;
