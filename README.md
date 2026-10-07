# Big Data Analytics Project: Kimia Farma Business Performance Analysis

![SQL (BigQuery)](https://img.shields.io/badge/SQL%20\(BigQuery\)-4285F4?style=for-the-badge&logo=googlecloud&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Looker](https://img.shields.io/badge/Looker%20Studio-F9AB00?style=for-the-badge&logo=googleanalytics&logoColor=white)

This project was completed as part of the **Big Data Analytics Project-Based Internship Program (Rakamin x Kimia Farma)**. The project analyzes Kimia Farma's business performance from **2020 to 2023** using transactional, product, branch, and inventory data.

The analysis focuses on identifying **business performance trends, key contributors to Net Sales decline, and actionable strategies** using **Google BigQuery**, **Python**, and **Looker Studio**.

**Dataset:** [Access Dataset](https://drive.google.com/drive/folders/1iamlP6PxnTbGxvwC3F_Pde5UOa8L9i2e?usp=sharing)

---

## Business Context

Kimia Farma is one of Indonesia's largest integrated pharmaceutical companies, operating an extensive pharmacy network across the country. Its nationwide operations generate substantial volumes of transactional, product, branch, and inventory data.

As the business continues to operate across diverse regions, leveraging historical data is essential to monitor business performance, identify sales trends, evaluate branch and regional contributions, and support data-driven decision-making.

Kimia Farma experienced **Net Sales declines in 2021 and 2023**. These declines may have been influenced by various commercial, operational, or market factors.

This project integrates transactional, product, branch, and inventory data to assess business performance and identify the key factors contributing to the observed Net Sales decline across 5 structured analytical dimensions:
1. **Annual Sales Trend**
2. **Seasonal Effect Analysis**
3. **Geographical Performance Analysis**
4. **Branch Performance & Service Quality Analysis**
5. **Product Performance & Pricing Analysis**
6. **Customer Behavior & Retention Rate Analysis (RFM and Cohort Analysis)**

---

## Problem Statement

Kimia Farma operates one of Indonesia's largest pharmacy networks, generating substantial volumes of transactional data across its branches nationwide. Despite its extensive operations, Kimia Farma experienced a **decline in Net Sales in 2021 and 2023**.

The decline may have been influenced by multiple factors. However, the key challenge is to determine **which factors contributed most significantly to the decline?**. Understanding these drivers is essential for identifying the business areas that require the most attention and improvement.

---

## Objective

The main objective of this project is to **identify and assess the key drivers behind Kimia Farma's Net Sales decline in 2021 and 2023 and identify priority areas for improvement to net sales recovery.**

The analysis aims to:

1. **Assess Business Performance:** Evaluate overall business performance to identify the main drivers of decline in 2021 and 2023.
2. **Identify Key Contributors:** Determine seasonality, provinces, branches, and product performances.
3. **Evaluate Potential Drivers:** Assess operational performance and pricing.
4. **Determine Key Root Causes:** Pinpoint the variables has impact on Net Sales decline.
5. **Design Actionable Strategies:** Translate findings into targeted strategies.

---

# Dataset & Tools

### **Datasets**
Joined into a master analytical table using SQL in **Google BigQuery**:
* `kf_final_transaction` — Transaction-level records
* `kf_product` — Product information and therapeutic categories
* `kf_kantor_cabang` — Branch and regional information
* `kf_inventory` — Inventory status data

### **Tools**
* **SQL (Google BigQuery)** — Data integration, data transformation and querying
* **Python** — Data Cleaning and Exploratory data analysis (EDA)
* **Looker Studio** — Interactive dashboard development with Looker Studio
* **CSV / Google Drive** — Dataset management
* **Power BI** — Rebuild end-to-end data analytics and dashboard development with Power BI (connected to Google BigQuery to extract data from data warehouse, used Power Query for ETL, Data Cleaning and Transformation, Data & Relationship Modelling, DAX for Calculated Measures & Columns, and Load the data for dashboard development)

# Insights

### 1. Annual Sales Trend
* **Net Sales & Volume Decline**: Net Sales contractions in loss years (**2021: -0.50%** | **2023: -0.57%**) directly mirror transaction volume drops (**-0.57%** and **-0.70%**).
* **Basket Size Stability**: **Average Order Value (AOV)** remained stable or increased across periods, confirming that customer spending per transaction did not contract.

### 2. Seasonal Dynamics & Retention Vulnerability (Q4 Drop)
* **Q1–Q3 Baseline Recovery**: Across all four years (2020–2023), Q1 establishes the baseline low, followed by a continuous recovery curve leading into Q3.
* **Q4 Performance Divergence**:
  * **Strong Years (2020 & 2022)**: Transaction volume continued to increase in Q4.
  * **Loss Years (2021 & 2023)**: Transaction volume dropped in Q4.
* **Cohort & RFM Retention Breakdown (Core Driver)**:
  * The business operates on a **critically low baseline retention rate (1%–3%)**, leaving revenue unprotected by recurring buyers.

### 3. Geographical Isolation: Concentrated Regional Impact
* **Regional Hub Concentration**: Top-line revenue losses were hyper-focused in two primary commercial markets (top sales contributors):
  * **West Java**: Primary driver of the 2021 sales decline.
  * **East Java**: Primary driver of the 2023 sales decline.

### 4. Braches Performance: Systemic Drop across Branches in 2021 and 2023
* **Pareto Analysis in Branches Drop**: Loss distribution is broad rather than isolated to specific weak locations (>40% of branches account for ~80% of regional drops):
  * **West Java**: 110 of 265 declining branches (**41.5%**).
  * **East Java**: 22 of 51 declining branches (**42.8%**).
* High Branch Operations Ratings (**>4.0** average) with a low-rated orders (were only **<2.4%** of total orders), paired with near-zero correlation between rating gaps and transaction drops, rule out branch or transaction performance as a root cause.

### 5. Product & Pricing: Therapeutic Concentration & Unstrategic Pricing
* **Category Loss Concentration in Q4**: Revenue loss is heavily concentrated in **2 primary therapeutic categories**: *Psycholeptics*, *Analgesics/Antipyretics*, and *Antihistamines for systemics use* drugs, contributing **73% to 100%** of total identified sales loss in priority regions in both loss years (2021 and 2023).
* **Price Fluctuation & Discount Stability in Q4**: List prices and promotional discount rates in Q4 both loss years (2021 and 2023) remained virtually flat (~0% fluctuation).

### 6. Operational & External Disconfirmations
* **Inventory Availability (Stable)**: Average opname inventory stock levels in Q4 both 2021 and 2023 remained flat across top loss contributors. Store-level availability was fully maintained, disconfirming supply chain bottlenecks or stockout issues.

---

# Root Cause Analysis Summary Table

| Analysis | Result | Key Finding |
| :--- | :---: | :--- |
| **Region Concentration** | 🔴 **Confirmed** | Net Sales contraction is directly driven by **West Java (2021)** and **East Java (2023)**, serving as the primary regional drivers for overall top-line revenue loss. |
| **Q4 Seasonal Transaction Drop** | 🔴 **Primary Loss Driver** | Net sales and transaction volume dropped exclusively during Q4 of loss years (**2021 & 2023**), while increasing in strong years (2020 & 2022). Pricing remained flat, confirming a seasonal decline. |
| **Low Retention Rate & Churn Issues** | 🔴 **Main Structural Driver** | **Critically low baseline retention (1%–3%)** and customers churn drives revenue/sales to loss. |
| **Transaction Volume in Core Products** | 🔴 **Primary Driver** | **Lower order frequency in high-revenue therapeutic categories** (*Psycholeptics, Analgesics, Antihistamines*) is also the driver of Net Sales loss across regional areas. |

---

# Conclusion

The Net Sales decline in 2021 and 2023 was **not caused by operational bottlenecks, inventory shortages, service quality deficits, or catalog pricing changes**. Instead, it was fundamentally driven by a **low customer retention rate (1%–3% baseline retention)** combined with a **low repeat purchase behavior** in Q4 which also concentrated in key therapeutic product categories across **West Java (2021)** and **East Java (2023)**. Because of predominantly *one-time buyers*, top-line revenue remains overly dependent on new customer acquisition. When acquisition momentum slows down, sales experience a sharp decline.

Moving forward, commercial strategy must pivot away from weak retention and customer acquisition reliance toward **recovering retention and Q4 repeat frequency through structured loyalty promo and incentives, targeted regional recovery, and field market intelligence**.

---

# Actionable Strategy Recommendations

### Strategic Recommendations Summary

| Key Finding / Root Cause | Recommended Action | Priority & Impact |
| :--- | :--- | :--- |
| 🔴 **Critically Low Baseline Retention (1%–3%) & Customer Churn** | **Loyalty & Retention Framework**: <br>• **Frequency Rewards (Q4 Repeat Orders)**: Issue year-end cashback/vouchers redeemable only if buyers maintain regular purchases to lock in repeat transactions.<br>• **Onboarding Bounce-Back Vouchers**: Automatically send time-bound vouchers (valid 14–30 days post-purchase) to convert new buyers into repeat customers, closing the initial churn gap.<br>• **VIP/High Value Segments Protection**: Protect *Champions & Loyalists (~28.7% accounts driving ~67% sales)* through premium offers, priority inventory access and personalized exclusive campaigns. | **High Priority** *(LTV Expansion & Revenue Protection)* |
| 🔴 **Transaction Loss in Core Categories & Regions (West & East Java)** | **Targeted Commercial Recovery**: <br>• Direct targeted promotions and inventory priority toward high-revenue therapeutic categories (*Psycholeptics, Analgesics/Antipyretics, Anti-histamines*).<br>• Concentrate promotional budgets and marketing push in **West Java (2021 focus)** and **East Java (2023 focus)** across affected branch networks (>40% dropping branches). | **High Priority** *(Immediate Volume Recovery)* |
| 🔴 **Q4 Seasonal Volume Contraction** | **Q4 Performance-Based Incentives & Bundling**: <br>• Implement performance-based loyalty challenges for rewards.<br>• Pair high-demand anchor products with declining therapeutic categories to boost order value (*basket size*) per individual transaction during Q4 slowdown. | **High Priority** *(Q4 Volume Defense)* |
| 🟠 **Unconfirmed External Demand Drivers** | **Customer Surveys & Feedback Validation**: Conduct brief post-purchase surveys among buyers to evaluate external friction (e.g., competitor pricing, brand substitution, delivery/onboarding pain points). | **Medium Priority** *(Strategic Validation)* |

---

# Interactive Dashboard & PPT

* **Looker Dashboard:** [Looker](https://datastudio.google.com/reporting/162035e9-b789-43eb-8c4e-bb0dde04e1a7)
* **PowerBI Dashboard:** [PowerBI](https://drive.google.com/file/d/1KkDZGkJFeVRkn3-3g2jlEHNoitcgFTA9/view?usp=drive_link)
* **PPT:** [Slides](https://docs.google.com/presentation/d/1d9zZ8hxcTwWHzCfweiNWnFmOmumwUQRs/edit?usp=sharing&ouid=113253202730031428002&rtpof=true&sd=true)

---

# Author

**Grace Natalie Catherine** | Big Data Analytics Project
