# College Majors EDA & Interactive Dashboard

**Exploratory Data Analysis and Interactive Excel Dashboard of US College Majors**: salary, employment, graduate premiums, and gender representation.

---

## 📊 Project Overview

This project analyzes US college majors using multiple datasets to provide insights into:  
- **Salary distributions** across majors and categories  
- **Employment trends** and risk analysis  
- **Graduate vs Non-Graduate outcomes**  
- **Gender representation**, particularly in STEM fields  

The project combines **Python for data cleaning**, **SQL for analytics**, and **Excel dashboards for visualization**, making it **portfolio-ready for data analyst roles**.

---

## 🗂️ Dataset

**Source:** Kaggle – [Uncovering Insights into College Majors](https://www.kaggle.com/datasets/thedevastator/uncovering-insights-to-college-majors-and-their)  

**License:** CC0: Public Domain  

**Included Tables:**
- `all_ages.csv` – All graduates, median salaries, employment data  
- `recent_grads.csv` – Recent graduates’ employment, gender, and salary  
- `grad_students.csv` – Graduate vs non-graduate salary comparisons  
- `women_stem.csv` – Female representation in STEM majors  
- `majors_list.csv` – Major codes and categories  

---

## 🛠️ Project Structure

```

college-majors-eda-dashboard/
│
├─ data/
│   ├─ raw/                 # Original CSV datasets
│   └─ cleaned/             # Cleaned CSVs after Python preprocessing
│
├─ notebooks/
│   ├─ 01_data_cleaning.ipynb
│   └─ 02_exploratory_data_analysis.ipynb
│
├─ sql/
│   ├─ schema.sql            # MySQL database schema
│   └─ analysis_queries.sql  # Analytical queries
│
├─ excel_dashboard/
│   └─ College_Majors_Dashboard.xlsx
│
└─ README.md

```

---

## 🧹 Step 1: Data Cleaning (Python)

- Cleaned missing values, standardized column names, and calculated derived metrics:  
  - `employment_rate = Employed / Total`  
  - `full_time_share = Employed_full_time_year_round / Employed`  
  - `salary_spread = P75th - P25th`  
  - `salary_premium = Grad_median - Nongrad_median`  

- Python used: `pandas`, `matplotlib`, `seaborn`.

---

## 📈 Step 2: Exploratory Data Analysis (EDA)

- **Salary Analysis:** Distribution, top/bottom paying majors, salary vs unemployment  
- **Employment Analysis:** Employment rate, full-time share, risk-reward scatter  
- **Graduate Premiums:** Comparison between grad and non-grad salaries  
- **Gender Analysis:** Female representation in majors, STEM focus, correlation with salary  

All EDA visualizations are in `notebooks/02_exploratory_data_analysis.ipynb`.

---

## 🗄️ Step 3: SQL Analytics

- **Database:** MySQL  
- **Schema:** Dimension table `majors`, fact tables `all_ages`, `recent_grads`, `grad_students`, `women_stem`  
- **Queries include:**  
  - Top/bottom salaries  
  - Unemployment rate insights  
  - Graduate premium analysis  
  - Gender vs salary correlation  
  - Risk-reward majors  

SQL queries are in `sql/analysis_queries.sql`.

---

## 📊 Step 4: Excel Dashboard

**Sheets and Layout:**
1. **Overview:** KPIs, Avg Salary & Unemployment by Category  
2. **Salary Analysis:** Histogram, Top/Bottom 10 Majors, Scatter Salary vs Unemployment  
3. **Employment & Risk Analysis:** Full-time share, high-risk/high-reward majors  
4. **Graduate Advantage:** Salary premium comparison, grad vs non-grad scatter  
5. **Gender & STEM Analysis:** Female representation charts, ShareWomen vs Median Salary  
6. **Summary Table:** All metrics with conditional formatting, interactive slicers  

**Features:**  
- PivotTables for aggregation  
- Interactive slicers for Major Category, Salary Range, STEM/Non-STEM  
- Conditional formatting for top/bottom metrics  

Dashboard file: `excel_dashboard/College_Majors_Dashboard.xlsx`

---

## 📌 Key Insights

- Engineering, Computer, and Physical Sciences majors have the **highest median salaries**  
- Some high-paying majors still carry **unemployment risks**  
- Graduate degrees **increase salary** in most majors, but not all  
- Female representation in STEM remains **low in many high-paying majors**  
- Salary distribution is **right-skewed**, indicating few majors dominate top salaries  

---

## 🛠️ Tools Used

- **Python:** pandas, matplotlib, seaborn  
- **SQL:** MySQL  
- **Excel:** PivotTables, slicers, charts  
- **Dataset:** Kaggle CC0: Public Domain  

---

## 📂 How to Use

1. Load CSV datasets into MySQL using `schema.sql` and `analysis_queries.sql`  
2. Run SQL queries to export analysis tables to Excel  
3. Open `College_Majors_Dashboard.xlsx` and interact with slicers/charts  
4. Explore insights, filter by major category, salary range, or gender share  

---

## 📄 License

This project is for **educational purposes**. Dataset License: CC0: Public Domain (Kaggle).  

---