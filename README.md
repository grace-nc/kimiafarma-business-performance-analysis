# Big Data Analytics Project: Kimia Farma Business Performance Analysis

![SQL (BigQuery)](https://img.shields.io/badge/SQL%20\(BigQuery\)-4285F4?style=for-the-badge&logo=googlecloud&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Looker Studio](https://img.shields.io/badge/Looker%20Studio-F9AB00?style=for-the-badge&logo=googleanalytics&logoColor=white)

This project was completed as part of the **Big Data Analytics Project-Based Internship Program (Rakamin x Kimia Farma)**. The project analyzes Kimia Farma's business performance from **2020 to 2023** using transactional, product, branch, and inventory data.

The analysis focuses on identifying **business performance trends, key contributors to Net Sales decline, and actionable strategies** using **Python**, **Google BigQuery**, and **Looker Studio**.

**Dataset:** [Access Dataset](https://drive.google.com/drive/folders/1iamlP6PxnTbGxvwC3F_Pde5UOa8L9i2e?usp=sharing)

---

## Business Context

Kimia Farma is one of Indonesia's largest integrated pharmaceutical companies, operating an extensive pharmacy network across the country. Its nationwide operations generate substantial volumes of transactional, product, branch, and inventory data.

As the business continues to operate across diverse regions, leveraging historical data is essential to monitor business performance, identify sales trends, evaluate branch and regional contributions, and support data-driven decision-making.

Kimia Farma experienced **Net Sales declines in 2021 and 2023**. These declines may have been influenced by various commercial, operational, or market factors.

This project integrates transactional, product, branch, and inventory data to assess business performance and identify the key factors contributing to the observed Net Sales decline across 5 structured analytical dimensions:
1. **Year-over-Year Sales Trend**
2. **Seasonal Effect Analysis**
3. **Geographical Performance Analysis**
4. **Branch Performance & Service Quality Analysis**
5. **Product Performance & Pricing Analysis**

---

## Problem Statement

Kimia Farma operates one of Indonesia's largest pharmacy networks, generating substantial volumes of transactional data across its branches nationwide. Despite its extensive operations, Kimia Farma experienced a **decline in Net Sales in 2021 and 2023**.

The decline may have been influenced by multiple factors. However, the key challenge is to determine **which factors contributed most significantly to the decline?**. Understanding these drivers is essential for identifying the business areas that require the most attention and improvement.

---

## Objective

The main objective of this project is to **identify and assess the key drivers behind Kimia Farma's Net Sales decline in 2021 and 2023 and identify priority areas for improvement to net sales recovery.**

The analysis aims to:

1. **Assess Business Performance:** Evaluate changes in Transaction Volume, Net Sales, and AOV to quantify the decline in 2021 and 2023.
2. **Identify Key Contributors:** Determine priority provinces, branches, and product categories driving sales loss.
3. **Evaluate Potential Drivers:** Assess operational service quality, pricing, and calendar seasonality.
4. **Determine Key Root Causes:** Pinpoint the variables has impact on Net Sales contraction.
5. **Formulate Priority Recovery Actions:** Translate findings into targeted commercial strategies.

---

# Dataset & Tools

### **Datasets**
Joined into a master analytical table using SQL in **Google BigQuery**:
* `kf_final_transaction` — Transaction-level records
* `kf_product` — Product information and therapeutic categories
* `kf_kantor_cabang` — Branch and regional information
* `kf_inventory` — Inventory status data

### **Tools**
* **SQL (Google BigQuery)** — Data integration, transformation, and analytical querying
* **Python** — Exploratory data analysis (EDA), statistical evaluation, and data processing
* **Looker Studio** — Interactive dashboard development
* **CSV / Google Drive** — Dataset management

---

# Key Business Insights

### **1. YoY Sales Trend: Volume-Driven Loss**
- Net Sales declines (**2021: -0.50%** | **2023: -0.57%**) directly mirror transaction volume drops (**-0.57%** and **-0.70%**).
- Average Order Value (AOV) remained stable to increasing, confirming the decline is an **order frequency issue**, not basket size contraction.

### **2. Seasonal Effect: Calendar Effects**
- The February drop is an artifact of **fewer operational days (28 vs. 31 days)**.
- Operating-day normalized run-rates show daily transactions actually increased (**+0.88% MoM in 2021** | **+0.81% MoM in 2023**), proving stable baseline demand.

### **3. Geographical Focus: Highly Concentrated**
- Top-line losses were localized in two primary growth markets: **West Java** (drove the 2021 decline) and **East Java** (drove the 2023 decline).

### **4. Branch Performance: Systemic, Not Quality-Driven**
- Losses are broadly distributed across the network (**>50% of branches** account for ~80% of regional drops), ruling out isolated underperformance.
- High Branch Ratings (>4.0) and near-zero correlation between rating gaps and transaction drops ($\approx 0$) rule out service quality deficits.

### **5. Product & Pricing: Core SKU Concentration & Inelastic Demand**
- Sales leakage is heavily concentrated in **3–4 core therapeutic categories** (*Psycholeptics, Analgesics, Anti-inflammatory, Airway Disease drugs*).
- Price cuts **did not attract more buyers**, leading to sales and margin loss without driving volume recovery, failed to boost sales volume.
---

# Conclusion

> **The Net Sales decline is primarily a transaction volume contraction concentrated in specific high-revenue therapeutic categories within West Java (2021) and East Java (2023), rather than an operational, service quality, seasonality, or customer basket-size issue.**
>
> Broad price cuts failed to stimulate volume growth due to price-inelastic demand, exacerbating revenue loss. Commercial priorities must pivot from unstrategic discounting toward volume recovery on key product lines in high-impact provinces.

---

# Actionable Strategies & Next Steps

1. **Halt Unstrategic Price Cuts & Protect Price Integrity**  
   Discontinue broad list price reductions on core therapeutic categories (*Psycholeptics, Analgesics, Anti-inflammatory*) to safeguard gross margins.

2. **Shift to Performance-Based Commercial Incentives**  
   Replace direct catalog discounts with volume-based trade rebates and tiered bundling with fast-moving items to encourage order frequency.

3. **Deploy Priority Regional Recovery Plans**  
   Focus field sales and inventory allocation on the **top 50% declining branches in West Java & East Java** that account for ~80% of volume losses.

4. **Investigate External Market Demand Leakage**  
   Conduct external trade audits to verify if transaction volume drops stem from stockouts, channel shifts, or competitor displacement in key product lines.

---

# Interactive Dashboard

* **Interactive Dashboard:** [Dashboard](https://datastudio.google.com/reporting/162035e9-b789-43eb-8c4e-bb0dde04e1a7)

---

# Author

**Grace Natalie Catherine** | Big Data Analytics Project
