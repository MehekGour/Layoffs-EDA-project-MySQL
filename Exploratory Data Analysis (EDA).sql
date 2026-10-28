-- Exploratory Data Analysis (EDA)

USE world_layoffs;
SELECT * FROM layoffs_staging2;


-- Total Layoffs

SELECT SUM(total_laid_off)
FROM  layoffs_staging2;


-- Count the rows

SELECT COUNT(*)
FROM layoffs_staging2;


-- Maximum layoffs

SELECT MAX(total_laid_off)
FROM  layoffs_staging2;


-- Check date range

SELECT 
MIN(date),
MAX(date)
FROM  layoffs_staging2;


-- Company with highest layoffs

SELECT company ,
SUM(total_laid_off) AS total_laid_off
FROM  layoffs_staging2
GROUP BY company
ORDER BY total_laid_off DESC;


-- Industry analysis

SELECT industry ,
SUM(total_laid_off) AS total_laid_off
FROM  layoffs_staging2
GROUP BY industry
ORDER BY total_laid_off DESC;


-- Country analysis

SELECT country ,
SUM(total_laid_off) AS total_laid_off
FROM  layoffs_staging2
GROUP BY country
ORDER BY total_laid_off DESC;


-- Layoffs by Year

SELECT YEAR(`date`) AS year ,
SUM(total_laid_off) AS total_laid_off
FROM  layoffs_staging2
GROUP BY year
ORDER BY year DESC;


-- Monthly Layoffs 

SELECT DATE_FORMAT(`date`, '%Y-%m') AS month,
SUM(total_laid_off) AS total_laid_off
FROM  layoffs_staging2
GROUP BY month
ORDER BY month DESC;


-- Top 10 Companies with highest layoffs

SELECT company ,
SUM(total_laid_off) AS total_laid_off
FROM  layoffs_staging2
GROUP BY company
ORDER BY total_laid_off DESC
LIMIT 10;


-- Layoffs by Funding stage

SELECT stage ,
SUM(total_laid_off) AS total_laid_off
FROM  layoffs_staging2
GROUP BY stage
ORDER BY stage DESC;


-- Companies that laid off 100% of employees

SELECT *
FROM  layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;


-- Rolling total layoffs (window function)

SELECT 
DATE_FORMAT(`date`, '%Y-%m') AS month,
SUM(total_laid_off) AS monthly_total,
SUM(SUM(total_laid_off))
OVER(ORDER BY DATE_FORMAT(`date`, '%Y-%m'))
AS rolling_total
FROM  layoffs_staging2
GROUP BY month 
ORDER BY month DESC;


-- cte company_year_ranking

WITH company_year AS (
    SELECT
        company,
        YEAR(date) AS year,
        SUM(total_laid_off) AS total_laid_off
    FROM layoffs_staging2
    GROUP BY company, YEAR(date)
),
company_year_rank AS (
    SELECT *,
           DENSE_RANK() OVER(
               PARTITION BY year
               ORDER BY total_laid_off DESC
           ) AS ranking
    FROM company_year
    WHERE year IS NOT NULL
)
SELECT *
FROM company_year_rank
WHERE ranking <= 5;
