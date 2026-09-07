# Big Data Analytics Project: Kimia Farma Business Performance Analysis

![SQL (BigQuery)](https://img.shields.io/badge/SQL%20\(BigQuery\)-4285F4?style=for-the-badge&logo=googlecloud&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Looker Studio](https://img.shields.io/badge/Looker%20Studio-F9AB00?style=for-the-badge&logo=googleanalytics&logoColor=white)

This project was completed as part of the **Big Data Analytics Project-Based Internship Program (Rakamin x Kimia Farma)**. The project analyzes Kimia Farma's business performance from **2020 to 2023** using transactional, product, branch, and inventory data.

The analysis focuses on identifying **business performance trends, key contributors to Net Sales decline, and actionable strategies** using **Google BigQuery**, **Python**, and **Looker Studio**.

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

# Insights

### **1. YoY Sales Trend: Volume-Driven Loss**
- Net Sales declines (**2021: -0.50%** | **2023: -0.57%**) directly mirror transaction volume drops (**-0.57%** and **-0.70%**).
- Average Order Value (AOV) remained stable to increasing, confirming the decline is an **order frequency issue**.

### **2. Seasonal Effect: Calendar Effects**
- The February drop is an artifact of **fewer operational days (28 vs. 31 days)**.
- Operating-day normalized run-rates show daily transactions actually increased (**+0.88% MoM in 2021** | **+0.81% MoM in 2023**), proving stable baseline demand in February.

### **3. Geographical Focus: Highly Concentrated**
- Top-line losses were localized in two primary markets (top 5 sales contributor): **West Java** (drove the 2021 decline) and **East Java** (drove the 2023 decline).

### **4. Branch Performance: Systemic Drop, Not Specific Across A Number of Branches**
- Losses are broadly distributed across the branches (**>50% of branches** account for ~80% of regional drops), ruling out isolated underperformance.
- High Branch Ratings (>4.0) and lower transactions rating (<=3.0) were only small proportions of transactions, and near-zero correlation between rating gaps and transaction drops rule out service quality deficits reflected in branch rating and transactions rating.

### **5. Inventory Analysis: Out-of-Stock Risk Disconfirmed**
- Average stock levels across top loss-contributing products remained remarkably stable between January and February ($\Delta \text{ Stock} \approx -0.3\% \text{ to } -1.6\%$).
- All key categories held safe stock level in February (**75–77 units opname stock**), disconfirming supply chain bottlenecks or stockouts issue.
- Sharp transaction and revenue declines occurred despite store-level product availability, proving that top-line loss is driven by **commercial and demand failure**, not supply failure.

### **6. Product & Pricing: Core Products Concentration & Two-Way Commercial Failure**
- Sales leakage is heavily concentrated in **3–4 core therapeutic categories** (*Psycholeptics, Analgesics, Anti-inflammatory, Airway Disease drugs*).
- **Failed Price Cuts:** Broad list price reductions (up to -13.31%) failed to stimulate transaction volume, directly declining sales without uplifting volume transactions.
- **Price Hike Anomaly:** A list price increase on *Psycholeptics, Hypnotics & Sedatives* (**+1.20%** in West Java) also contributed to declining the sales. 
- **Flat Discounts ($\Delta \approx 0.00\%$):** Discount rates remained unchanged (% of discount change close to zero), confirming net sales decline driven purely by unstrategic price adjustments, not promotional leakage.

---

# Conclusion

**The Net Sales decline is fundamentally driven by 2 factors: transaction volume drop concentrated in key high-revenue products and unstrategic pricing** across **West Java (2021)** and **East Java (2023)**. 

Operational factors, service quality deficits, seasonal effects, and stock availability are disconfirmed as root causes. Instead, unstrategic pricing adjustments drove a two-way commercial failure: broad price cuts decreasing sales without stimulating volume and unmanaged price hikes (without added value proportions) also triggered order frequency contractions. 

Rather than executing list price changes, commercial strategy must pivot toward **stabilizing baseline prices and recovering order volume through structured trade deals/promotions/incentives**, and **supported by field market intelligence to address external demand drivers**.

---

# Actionable Strategy Recommendations

1. **Prioritize Recovery of Key Loss-Contributing Products**  
   Target high-revenue, high-margin products with the highest transaction drops (*Psycholeptics, Analgesics, Anti-inflammatory, Airway Disease drugs*) to maximize sales recovery impact.

2. **Shift Focus from Inventory Operations to Commercial Execution**  
   Maintain existing buffer inventory standards while redirecting operational focus away from supply chain troubleshooting toward trade execution, market coverage, and salesforce activation.

3. **Establish Disciplined Catalog Pricing (Address Price Cuts & Price Hikes)**  
   - **Stop Unnecessary Price Cuts:** Avoid cutting catalog prices across the board. Keep base prices steady on products with low price sensitivity to protect overall revenue.
   - **Re-evaluate Unaligned Price Hikes:** Review price increases (e.g., *Hypnotics & Sedatives* at **+1.20%**) that also contribute to sales decline. Ensure price hikes are backed by value propositions or trade support to prevent demand contraction.

4. **Shift to Targeted Commercial Promotions**  
   Replace permanent list-price changes with performance-driven trade promotions (volume-based tiered discounts, product bundling, and channel incentives) to boost order frequency while protecting baseline prices.

5. **Focus Regional Recovery on West Java & East Java**  
   Focus on priority recovery plans and set explicit volume and sales targets in **West Java** and **East Java**.

6. **Conduct Field Market Intelligence & Monitor Effectiveness**  
   - Deploy field teams to investigate external demand drivers (competitor price moves, pharmacy credit terms, customer demand shifts).
   - Continuously monitor how price and trade adjustments impact transaction volume and Net Sales.
   
---

# Interactive Dashboard

* **Interactive Dashboard:** [Dashboard](https://datastudio.google.com/reporting/162035e9-b789-43eb-8c4e-bb0dde04e1a7)

---

# Author

**Grace Natalie Catherine** | Big Data Analytics Project
