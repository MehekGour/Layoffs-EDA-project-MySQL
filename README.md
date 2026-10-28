# SQL Exploratory Data Analysis (EDA) — Layoffs Dataset

## 📌 Project Overview

This project focuses on performing **Exploratory Data Analysis (EDA)** on a global layoffs dataset using SQL and MySQL Workbench.

The goal is to analyze employee layoffs across companies, industries, countries, and time periods to identify meaningful patterns, trends, and insights.


## 🎯 Project Objectives

- Explore and understand the layoffs dataset.
- Identify companies with the highest number of layoffs.
- Analyze layoffs across industries and countries.
- Investigate layoffs by year and month.
- Identify companies with 100% workforce layoffs.
- Examine layoffs by company funding stage.
- Practice SQL aggregation, filtering, sorting, and window functions.

## 🛠️ Tools & Technologies

- **SQL** — Data exploration and analysis
- **MySQL** — Database management
- **MySQL Workbench** — SQL query execution
- **GitHub** — Project documentation and version control

## 📂 Dataset Description

The dataset contains information about layoffs across companies.

| Column | Description |
|---|---|
| `company` | Name of the company |
| `location` | Location of the company |
| `industry` | Industry or business sector |
| `total_laid_off` | Number of employees laid off |
| `percentage_laid_off` | Percentage of the workforce laid off |
| `date` | Date of the layoff event |
| `stage` | Company funding stage |
| `country` | Country where the company operates |
| `funds_raised_millions` | Funds raised by the company in millions |

*The exact columns depend on the dataset version.*

## 🔍 Analysis Performed

### 1. Understanding the Dataset
- Explored the dataset structure.
- Reviewed the available columns.
- Identified the scope of the data.

### 2. Identifying Maximum Layoffs
- Found the maximum number of employees laid off in a single record.
- Identified records with the highest reported layoff percentages.

### 3. Company-Level Analysis
- Identified companies with the highest total layoffs.
- Analyzed companies reporting 100% workforce layoffs.
- Compared layoffs across different companies.

### 4. Industry-Level Analysis
- Examined layoffs across industries.
- Identified industries with the highest number of reported layoffs.

### 5. Country-Level Analysis
- Analyzed layoffs by country.
- Identified countries with the highest reported layoffs.

### 6. Time-Based Analysis
- Explored layoffs by year.
- Examined monthly layoff trends.
- Used rolling totals to understand how reported layoffs accumulated over time.

### 7. Company Funding Stage Analysis
- Compared layoffs across company funding stages.
- Investigated patterns among startups and more established companies.

### 8. Ranking Analysis
- Ranked companies by layoffs within each year.
- Used window functions to identify companies with the highest layoffs during different periods.

## 💻 SQL Concepts Used

This project helped me practice the following SQL concepts:

- `SELECT` and `WHERE`
- `ORDER BY` and `GROUP BY`
- Aggregate functions: `SUM()`, `MAX()`, and `MIN()`
- `DISTINCT`
- Date functions
- `GROUP BY` with multiple columns
- Common Table Expressions (CTEs)
- Window functions
- `DENSE_RANK()`
- `SUM() OVER()`
- Subqueries
- Rolling totals
- Data filtering and sorting

## 📁 Project Structure

```text
SQL-Exploratory-Data-Analysis/
│
├── README.md
├── layoffs.csv
└── layoffs_eda.sql
```

- `README.md` — Project documentation.
- `layoffs.csv` — Dataset used for analysis, if included.
- `layoffs_eda.sql` — SQL queries used for exploratory analysis.

*Adjust the filenames to match your actual repository.*

## 🚀 How to Run This Project

1. Clone or download the repository.
2. Open MySQL Workbench.
3. Import the dataset into your MySQL database.
4. Ensure the dataset is cleaned before performing EDA.
5. Open `layoffs_eda.sql`.
6. Execute the queries in the appropriate order.
7. Review the query results to explore the layoff trends.

## 📊 Key Insights

The analysis can help investigate questions such as:

- Which companies reported the highest layoffs?
- Which industries were most affected?
- Which countries recorded the largest number of layoffs?
- How did layoffs change over time?
- Which companies reported laying off their entire workforce?
- How did layoffs vary across funding stages?
- Which companies had the highest layoffs in each year?

*Add your actual findings and numerical results after running the SQL queries. The questions above describe the analysis scope, not verified results.*

## 📚 Learning Reference

This project was inspired by the **Alex The Analyst Data Analyst Bootcamp** SQL Exploratory Data Analysis project.

It strengthened my understanding of SQL aggregation, window functions, date-based analysis, and extracting insights from real-world datasets.




