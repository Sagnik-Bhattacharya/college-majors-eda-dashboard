# 🎓 College Majors: Economic Outcomes & Interactive Dashboard

**End-to-end Exploratory Data Analysis and Interactive Excel Dashboard** analyzing U.S. college majors across salary, employment outcomes, graduate premiums, and gender representation.

---

## 📊 Project Overview

This project explores the **economic and employment outcomes of U.S. college majors** using multiple public datasets.
It answers questions such as:

* Which majors offer the **highest median salaries**?
* Do **high-paying majors also carry higher unemployment risk**?
* How much does a **graduate degree improve earnings**?
* How does **gender representation** vary across majors and salaries?

The project demonstrates a **full data analyst workflow**:

* **Python** for data cleaning and feature engineering
* **SQL (MySQL)** for analytical querying
* **Excel** for interactive dashboards and business-ready insights

---

## 🗂️ Dataset

**Source:** Kaggle
🔗 *Uncovering Insights into College Majors and Their Outcomes*
[https://www.kaggle.com/datasets/thedevastator/uncovering-insights-to-college-majors-and-their](https://www.kaggle.com/datasets/thedevastator/uncovering-insights-to-college-majors-and-their)

**License:** CC0 – Public Domain
**Original Source:** U.S. Census Bureau (American Community Survey)

### Included Tables

* `all_ages.csv` — Salary and employment outcomes across all age groups
* `recent_grads.csv` — Recent graduate employment, gender, and salary data
* `grad_students.csv` — Graduate vs non-graduate salary comparisons
* `women_stem.csv` — Female representation in STEM majors
* `majors_list.csv` — Major codes and category mapping

---

## 🛠️ Project Structure

```
college-majors-eda-dashboard/
│
├─ data/
│   ├─ raw/                 # Original CSV datasets
│   └─ cleaned/             # Cleaned & feature-engineered CSVs
│
├─ notebooks/
│   ├─ 01_data_cleaning.ipynb
│   └─ 02_exploratory_data_analysis.ipynb
│
├─ sql/            # MySQL database schema
│   └─ analysis_queries.sql  # Analytical SQL queries
│
├─ excel/
│   └─ US_College_Majors_Economic_Outcomes_Dashboard.xlsx
│
├─ assets/                  # Dashboard and chart images
├─ reports/
│   ├─ us_college_majors_economic_outcomes.pdf
│   └─ us_college_majors_economic_outcomes.tex
│
└─ README.md
```

---

## 🧹 Step 1: Data Cleaning (Python)

All datasets were cleaned and standardized using **pandas**.
Key steps included:

* Handling missing values and inconsistent column names
* Aligning major codes across datasets
* Creating derived metrics:

  * `employment_rate = Employed / Total`
  * `full_time_share = Employed_full_time_year_round / Employed`
  * `salary_spread = P75th - P25th`
  * `salary_premium = Grad_median - Nongrad_median`

📌 Output: Cleaned, analysis-ready CSV files in `data/cleaned/`

---

## 📈 Step 2: Exploratory Data Analysis (EDA)

EDA was conducted in Python to uncover patterns and relationships:

* **Salary Analysis**

  * Distribution of median salaries
  * Top and bottom paying majors
  * Salary vs unemployment risk

* **Employment Analysis**

  * Employment rate and full-time share
  * High-risk vs high-reward majors

* **Graduate Premium Analysis**

  * Graduate vs non-graduate salary comparisons
  * Salary premium by major category

* **Gender Analysis**

  * Female representation across majors
  * Gender share vs median salary
  * STEM-specific insights

All EDA visuals and code are available in
`notebooks/02_exploratory_data_analysis.ipynb`.

---

## 🗄️ Step 3: SQL Analytics (MySQL)

The cleaned data was loaded into a **MySQL database** for structured analysis.

### Database Design

* **Dimension table:** `majors`
* **Fact tables:** `all_ages`, `recent_grads`, `grad_students`, `women_stem`

### Analytical Queries

* Top and bottom majors by salary
* Unemployment rate by major and category
* Graduate salary premiums
* Gender representation vs earnings
* High-risk / high-reward majors

All SQL queries are documented in `sql/analysis_queries.sql`.

---

## 📊 Step 4: Excel Interactive Dashboard

A professional **Excel dashboard** was built using PivotTables and charts.

### Dashboard Sections

1. **Overview**

   * KPIs
   * Average salary & unemployment by category
2. **Salary Analysis**

   * Top & bottom 10 majors
   * Salary vs unemployment scatter
3. **Employment & Risk**

   * Employment rate and full-time share
   * High-risk majors table
4. **Graduate Advantage**

   * Salary premium by category
   * Graduate vs non-graduate comparison
5. **Gender & STEM Analysis**

   * Female representation across majors
   * ShareWomen vs salary trends
6. **Summary Table**

   * All key metrics with conditional formatting

### Features

* Interactive slicers:

  * Major Category
  * Salary range
  * Gender share
* Conditional formatting for quick insights

📁 File: `excel_dashboard/College_Majors_Dashboard.xlsx`

---

## 📌 Key Insights

* Engineering and STEM majors dominate the **highest median salaries**
* High salary does not always imply **low unemployment risk**
* Graduate degrees generally offer a **positive salary premium**
* Female representation remains **low in many high-paying majors**
* Salary distribution is **right-skewed**, with a small number of majors driving top earnings

---

## 🛠️ Tools & Technologies

* **Python:** pandas, matplotlib, seaborn
* **SQL:** MySQL
* **Excel:** PivotTables, slicers, dashboards
* **Data Source:** Kaggle (CC0 – Public Domain)

---

## 📂 How to Run the Project

1. Clean data using `01_data_cleaning.ipynb`
2. Perform EDA using `02_exploratory_data_analysis.ipynb`
3. Load cleaned CSVs into MySQL directly.
4. Execute analytical queries from `analysis_queries.sql`
5. Open `US_College_Majors_Economic_Outcomes_Dashboard.xlsx` and explore insights interactively

---

## 📄 License & Attribution

This project is for **educational and portfolio purposes**.
Dataset provided under **CC0: Public Domain**, curated by *The Devastator* on Kaggle and derived from the U.S. Census Bureau’s American Community Survey.