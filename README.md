# Big Data Analytics Project: Kimia Farma Business Performance Analysis

![SQL (BigQuery)](https://img.shields.io/badge/SQL%20\(BigQuery\)-4285F4?style=for-the-badge&logo=googlecloud&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Looker](https://img.shields.io/badge/Looker%20Studio-F9AB00?style=for-the-badge&logo=googleanalytics&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)

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
* **CSV / Google Drive** — Dataset management
1. First End-to-end Flow:
* **Python** 
* **SQL (Google BigQuery)** 
* **Looker Studio** 
  
2. Second End-to-end Flow (Rebuild end-to-end data analytics with Power BI):
* **SQL (Google BigQuery)** — Data warehouse
* **Power BI** — Connected with GBQ, Power Query for ETL and Data Modelling & DAX for Calculated Measures & Columns, and Load the data for dashboard development


# Insights

### 1. Annual Sales Trend
* **Net Sales & Volume Decline**: Net Sales contractions in loss years directly mirror transaction volume drops.
* **Basket Size Stability**: **Average Order Value (AOV)** remained stable across periods, confirming that customer spending per transaction did not experience contraction.

### 2. Seasonal Dynamics & Retention Vulnerability (Q4 Drop)
* **Q1–Q3 Baseline Recovery**: Across all four years (2020–2023), Q1 establishes the baseline low, followed by a continuous recovery curve leading into Q3.
* **Q4 Performance Divergence**:
  * **Strong Years (2020 & 2022)**: Transaction volume continued to increase in Q4.
  * **Loss Years (2021 & 2023)**: Transaction volume dropped in Q4.
* **Cohort & RFM Retention Breakdown (Core Driver)**:
  * The business operates on a **critically low baseline retention rate (1%–3%)**, leaving revenue unprotected by recurring buyers because most of buyers are one-time buyers.

### 3. Geographical Isolation: Concentrated Regional Impact
* **Regional Hub Concentration**: Top-line revenue losses were hyper-focused in two primary commercial markets (top sales contributors):
  * **West Java**: Primary driver of the 2021 sales decline.
  * **East Java**: Primary driver of the 2023 sales decline.

### 4. Braches Performance: Systemic Drop across Branches in 2021 and 2023
* **Pareto Analysis in Branches Drop**: Loss distribution is broad and in a systemic branch rather than isolated to specific weak locations:
  * **West Java**: 110 of 265 declining branches (**41.5%**).
  * **East Java**: 22 of 51 declining branches (**42.8%**).
* High Branch Operations Ratings (**>4.0** average) with a low-rated orders (were only **<2.4%** of total orders), paired with near-zero correlation between rating gaps and transaction drops, rule out branch or transaction performance as a root cause.

### 5. Product & Pricing: Product Leakers Concentration & Stable Pricing
* **Category Loss Concentration in Q4**: Revenue loss is heavily concentrated in **2 primary product**: *Psycholeptics*, *Analgesics/Antipyretics* contributing **70%** loss in 2021, and **1 primary product** contributing **77%** loss of total identified sales loss in priority regions in 2023.
* **Price Fluctuation & Discount Stability in Q4**: List prices and promotional discount rates in Q4 both loss years (2021 and 2023) remained virtually flat (~0% fluctuation).

### 6. Operational & External Disconfirmations
* **Inventory Availability (Stable)**: Opname inventory stock levels in Q4 both 2021 and 2023 remained flat across top loss contributors. Store-level availability was fully maintained, disconfirming supply chain bottlenecks or stockout issues.

---

# Root Cause Analysis Summary Table

| Analysis | Result | Key Finding |
| :--- | :---: | :--- |
| **Q4 Seasonal Sales Drop** | 🔴 **Seasonal Loss Driver** | Sales and transaction volume drop in Q4 exclusively during loss years (**2021 & 2023**), while growing in strong years (2020 & 2022). |
| **Low Retention Rate and Repeat Purchase Behavior** | 🔴 **Primary/Main Root Cause Driver of Sales Decline in 2021 and 2023** | **Critically low baseline retention (1%–3%)** impacted revenue both in Q4 2021 and Q4 2023 because of low repeat buying behavior that driven by most of the customers are one-time buyers. Q4 2023 suffered more sharp decline due to more severe churn which resulted in active customers. |
| **Regional Sales Decline** | 🔴 **Regional Driver** | Net Sales decline is concentrated in **West Java (2021)** and **East Java (2023)**, serving as the primary regional focus for overall top-line revenue losses. |
| **Loss Concentrated in Key Products** | 🔴 **Product Driver** | **Loss concentrated in key products** is also the driver of overall Net Sales loss across both regional regions. |

---

# Conclusion

The Net Sales decline in 2021 and 2023 was fundamentally driven by a **low customer retention rate (1%–3% baseline retention)** and combined with a **low repeat purchase behavior** because of **one-time buyers** in Q4 which also concentrated in key products across **West Java (2021)** and **East Java (2023)**. Because of predominantly *one-time buyers*, top-line revenue remains overly dependent on new customer acquisition. When acquisition momentum slows down, sales experience a sharp decline.

Moving forward, commercial strategy must pivot away from weak retention and customer acquisition reliance toward **recovering retention and Q4 repeat frequency through structured loyalty promo and incentives, targeted regional recovery, and field market intelligence**.

---

# Actionable Strategy Recommendations

### Strategic Recommendations Summary

| Key Finding / Root Cause | Recommended Action | Priority & Impact |
| :--- | :--- | :--- |
| 🔴 **Critically Low Baseline Retention (1%–3%) & Customer Churn** | **Retention, Loyalty & Win-Back Framework**:<br>• **Frequency Rewards**: Issue year-end cashback/vouchers for maintaining regular purchases to lock in repeat transactions.<br>• **Bounce-Back Vouchers**: Send time-bound vouchers (14–30 days post-purchase) to convert new buyers and close initial churn.<br>• **VIP Protection**: Retain *Champions & Loyalists* (~27% accounts driving ~67% sales) via priority offers and personalized campaigns.<br>• **Automated Win-Backs**: Launch targeted reactivation campaigns for **At-Risk**, **Hibernating** segments before complete churn occurs because they have a notable contribution to sales. | **High Priority**<br>*(LTV Expansion & Revenue Protection, Customer Churn Mitigation and Win-Back)* |
| 🔴 **Transaction Loss in Core Categories & Key Regions** | **Targeted Commercial Recovery**:<br>• Prioritize inventory and promotions for high-revenue products (*Psycholeptics, Analgesics/antipyretics*).<br>• Focus promotional budgets on **West Java (2021 decline)** and **East Java (2023 decline)** across affected branch networks. | **High Priority**<br>*(Immediate Revenue Recovery)* |
| 🔴 **Q4 Seasonal Volume Contraction** | **Q4 Performance Incentives & Bundling**:<br>• Launch performance challenges (e.g., "Complete 2+ purchases per month in Q4 to unlock tier rewards").<br>• Create product bundles pairing high-demand anchors with declining categories to raise basket size during Q4. | **High Priority**<br>*(Q4 Volume Defense)* |
| 🟠 **Unconfirmed External Demand Drivers** | **Customer Feedback, Market Intelligence and Competitor Analysis**:<br>• Conduct post-purchase surveys to assess external friction (e.g., competitor pricing, brand substitution, delivery pain points). | **Medium Priority**<br>*(Strategic Validation)* |

---

# Interactive Dashboard & PPT

* **Looker Dashboard:** [Looker](https://datastudio.google.com/reporting/162035e9-b789-43eb-8c4e-bb0dde04e1a7)
* **PowerBI Dashboard:** [PowerBI](https://drive.google.com/file/d/1KkDZGkJFeVRkn3-3g2jlEHNoitcgFTA9/view?usp=drive_link)
* **PPT:** [Slides](https://docs.google.com/presentation/d/1d9zZ8hxcTwWHzCfweiNWnFmOmumwUQRs/edit?usp=sharing&ouid=113253202730031428002&rtpof=true&sd=true)

---

# Author

**Grace Natalie Catherine** | Big Data Analytics Project
