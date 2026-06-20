# Medicaid Drug Spending Analysis (2019–2023)

Analysis of U.S. Medicaid drug spending data published by the Centers for Medicare & Medicaid Services (CMS), covering five years of spending trends across drugs, manufacturers, and claim types.

Built as a healthcare data analyst portfolio project targeting roles in hospital procurement and health system analytics.

---

## Tools Used

| Tool | Purpose |
|------|---------|
| MySQL | Database design, data loading, analytical queries |
| Power BI | Interactive reports and dashboards (Power BI Desktop / Service) |
| Python (Jupyter) | Exploratory data analysis, visualizations |
| GitHub | Version control and portfolio hosting |

---

## Dataset

**Source:** Centers for Medicare & Medicaid Services (CMS)
**File:** DSD_MCD_RY25_P06_V20_D23_BGM.csv
**Download:** https://data.cms.gov/summary-statistics-on-use-and-payments/medicare-medicaid-spending-by-drug/medicaid-spending-by-drug

| Detail | Value |
|--------|-------|
| Rows | 16,938 |
| Columns | 36 |
| Years Covered | 2019 – 2023 |
| Unit of Analysis | Drug × Manufacturer |

> The raw CSV is not included in this repository. Download it from the link above and place it in the `/data/` folder before running any scripts.

---

## Project Structure

```
medicaid-spending-analysis/
│
├── sql/
│   ├── 01_create_table.sql       # Database and table schema
│   ├── 02_load_data.sql          # Load CSV into MySQL
│   └── 03_analysis_queries.sql   # 5 analytical queries
│
├── python/
│   └── eda_notebook.ipynb        # Exploratory data analysis
│
├── power_bi/
│   └── report_files/    # Power BI Desktop files and exported report screenshots
│
├── data/
│   └── README.md                 # Data source instructions
│
└── README.md
```

---

## SQL Analysis

Five queries were written to answer procurement-relevant business questions:

| # | Query | Business Question |
|---|-------|-------------------|
| 1 | Top 10 drugs by total spending | Which drugs consume the most Medicaid budget? |
| 2 | Total spending by year (2019–2023) | How has overall Medicaid drug spending trended? |
| 3 | Top 5 manufacturers by revenue | Which suppliers dominate Medicaid drug supply? |
| 4 | Brand vs generic cost per prescription | How much more do brand drugs cost vs generics? |
| 5 | Drugs with 50%+ spending increase YoY | Which drugs represent rising procurement risk? |

See `/sql/03_analysis_queries.sql` for full query code.

---

## Key Findings

- Total Medicaid drug spending increased significantly from 2019 to 2023, driven by a small number of high-cost brand-name drugs.
- The top 10 drugs account for a disproportionate share of total program spending.
- Brand-name drugs cost substantially more per prescription than their generic equivalents.
- Several drugs showed year-over-year spending increases exceeding 50%, signaling procurement risk areas.
- A small group of manufacturers generate the majority of Medicaid drug revenue.

> Note: Specific figures will be updated after SQL queries are executed against the full dataset.

---

## Power BI Report

Built using Power BI Desktop connected to the MySQL database (or a prepared dataset). The report is organized across 3 pages mirroring the original analysis:

**Page 1 — Spending Overview**
- Total spending KPI cards by year
- Year-over-year spending trend line chart
- Top 10 drugs by 2023 spending (bar chart)

**Page 2 — Manufacturer Analysis**
- Top manufacturers by total revenue (bar chart)
- Drug count per manufacturer (table)
- Manufacturer market share (donut chart)

**Page 3 — Cost & Risk Analysis**
- Brand vs generic average cost per claim (clustered bar)
- High-risk drugs: 50%+ YoY spending increase (table)
- CAGR distribution by drug type (histogram)

You can publish the report to Power BI Service for sharing, or export screenshots to `assets/` for portfolio display.

---

## Python EDA

The Jupyter notebook (`/python/eda_notebook.ipynb`) covers:

- Dataset shape, data types, and null value summary
- Distribution of spending per dosage unit (histogram)
- Total spending vs total claims scatter plot (2023)
- Top 10 drugs by spending bar chart
- Year-over-year spending trend line chart

---

## How to Run

### MySQL

1. Download the CSV from the link in `/data/README.md`
2. Place it in your MySQL `secure_file_priv` folder
3. Run `sql/01_create_table.sql` to create the database and table
4. Update the file path in `sql/02_load_data.sql` and run it
5. Run `sql/03_analysis_queries.sql` to execute the analysis

### Python

```bash
pip install pandas matplotlib seaborn jupyter
jupyter notebook python/eda_notebook.ipynb
```

### Power BI

1. Install Power BI Desktop (or use Power BI Service)
2. Connect to MySQL using the MySQL connector or import a prepared dataset
3. Build the three report pages described above
4. Publish to Power BI Service to share, or export report pages/screenshots to `/assets/` for portfolio use

## Author

**[Fadi Amir]**
SQL Developer | Database Design

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue)](https://linkedin.com)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-black)](https://github.com/unreallfadi)

---

## License

This project is for educational and portfolio purposes.
Data is publicly available from CMS and is not redistributed here.
