# Big Data Analytics Project: Kimia Farma Business Performance Analysis

![SQL (BigQuery)](https://img.shields.io/badge/SQL%20\(BigQuery\)-4285F4?style=for-the-badge&logo=googlecloud&logoColor=white)
![Looker](https://img.shields.io/badge/Looker%20Studio-F9AB00?style=for-the-badge&logo=googleanalytics&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)

This project was completed as part of the **Big Data Analytics Project-Based Internship Program (Rakamin x Kimia Farma)**. The project analyzes Kimia Farma's business performance from **2020 to 2023** using transactional, product, branch, and inventory data.

The analysis focuses on identifying **business performance trends, key contributors to Net Sales decline, and actionable strategies** using **Google BigQuery**, **Python**, **Looker Studio**, and **Power BI**.

**Dataset:** [Access Dataset](https://drive.google.com/drive/folders/1iamlP6PxnTbGxvwC3F_Pde5UOa8L9i2e?usp=sharing)

---

## Business Context

Kimia Farma is one of Indonesia's largest integrated pharmaceutical companies, operating an extensive pharmacy network across the country. Its nationwide operations generate substantial volumes of transactional, product, branch, and inventory data.

As the business continues to operate across diverse regions, leveraging historical data is essential to monitor business performance, identify sales trends, evaluate branch and regional contributions, and support data-driven decision-making.

Kimia Farma experienced **Net Sales declines in 2021 (-0.55% YoY) and 2023 (-0.59% YoY)**. These declines may have been influenced by various commercial, operational, or market factors.

This project integrates transactional, product, branch, and inventory data to assess business performance and identify the key factors contributing to the observed Net Sales decline across 6 structured analytical dimensions:
1. **Annual Sales Trend**
2. **Seasonal Effect Analysis**
3. **Geographical Performance Analysis**
4. **Branch Performance & Service Quality Analysis**
5. **Product Performance & Pricing Analysis**
6. **Customer Behavior & Retention Rate Analysis (RFM and Cohort Analysis)**

---

## Problem Statement

Kimia Farma operates one of Indonesia's largest pharmacy networks, generating substantial volumes of transactional data across its branches nationwide. Despite its extensive operations, Kimia Farma experienced a **decline in Net Sales in 2021 and 2023**.

The decline may have been influenced by multiple factors. However, the key challenge is to determine **which factors contributed most significantly to the decline?** Understanding these drivers is essential for identifying the business areas that require the most attention and improvement.

---

## Objective

The main objective of this project is to **identify and assess the key drivers behind Kimia Farma's Net Sales decline in 2021 and 2023 and identify priority areas for improvement to support net sales recovery.**

The analysis aims to:

1. **Assess Business Performance:** Evaluate overall business performance to identify the main drivers of decline in 2021 and 2023.
2. **Identify Key Contributors:** Determine seasonality, October dynamics, provinces, branches, and product performances.
3. **Evaluate Potential Drivers:** Assess operational performance, inventory levels, and pricing/discount dynamics.
4. **Determine Key Root Causes:** Pinpoint the variables driving Net Sales contraction.
5. **Design Actionable Strategies:** Translate findings into targeted retention, RFM, and commercial recovery strategies.

---

# Dataset & Tools

### **Datasets**
Joined into a master analytical table using SQL in **Google BigQuery**:
- `kf_final_transaction` — Transaction-level records
- `kf_product` — Product information and therapeutic categories
- `kf_kantor_cabang` — Branch and regional information
- `kf_inventory` — Inventory status data

### **Tools**
- **CSV / Google Drive** — Dataset management
1. First End-to-end Flow:
- **Python**
- **SQL (Google BigQuery)**
- **Looker Studio**

2. Second End-to-end Flow (Rebuild end-to-end data analytics with Power BI):
- **SQL (Google BigQuery)** — Data warehouse
- **Power BI** — Connected with GBQ, Power Query for ETL and Data Modelling & DAX for Calculated Measures & Columns, and Load the data for dashboard development

---

# Insights

### 1. Annual Sales Trend
- **Net Sales & Volume Decline**: Net Sales contractions in weak years (**2021: -0.55% YoY**; **2023: -0.59% YoY**) closely track drops in **transaction volume** (**-0.56%** in 2021; **-0.73%** in 2023), whereas **2022** grew in both transactions (**+0.58% YoY**) and Net Sales (**+0.67% YoY**).
- **Basket Size Stability**: **Average Order Value (AOV)** remained stable or edged up across periods (**+0.01%** in 2021; **+0.12%** in 2022; **+0.14%** in 2023), confirming that customers did not spend less per transaction.

### 2. Seasonal Dynamics, October Attrition & Retention Vulnerability
- **Q1 Baseline & Mid-Year Recovery**: Across 2020–2023, Q1 generally posted the lowest transaction volume (except 2020), followed by a steady recovery curve from Q1 through Q2 into Q3.
- **October Decline & Pre-Year-End Spending Shifts**: **October (Month 10)** shows a recurring downward trend in transaction volume and Net Sales during weak years (**2020–2021** and **2022–2023**), driven by pre-year-end purchase delays (ahead of November/11.11/year-end promotions), post-pandemic/inflationary budget caution, and softer order frequency (**-0.8%** in 2023).
- **February Monthly Drop (Calendar Effect & Pricing Misadjustment)**: February recorded the steepest monthly drop across 2020–2023 (e.g., **6.65B to 6.08B** in 2021; **6.71B to 6.10B** in 2023), driven primarily by a **9.68% reduction in operational days** (28 vs. 31 days in January), post-holiday *consumption fatigue*, holiday/logistics pauses, and unstrategic catalog price cuts, while daily velocity remained healthy (**+1.17%** daily average sales growth in Feb 2021 from **214.49M** to **217.00M**; **+0.39%** in Feb 2023 from **216.46M** to **217.84M**, the 4-year daily high).
- **Cohort & RFM Retention Dynamics ("Leaky Bucket")**:
  - Post-acquisition retention drops sharply to a critical **1%–3%** baseline (and **1%–2%** in late cohorts vs. an **11%–12%** early baseline), leaving revenue without a recurring buyer cushion as most buyers behave as **one-time buyers**.
  - **October 2020 vs. 2021 (Weak Year)**: Attrition (**11,470** lost) outpaced acquisition (**11,037** new), creating a **-433** net customer loss.
  - **October 2021 vs. 2022 (Strong Year)**: Higher acquisition (**11,429** new) outpaced attrition (**11,061** lost), creating a **+368** net customer gain.
  - **October 2022 vs. 2023 (Weak Year)**: Elevated attrition (**11,429** lost) outpaced acquisition (**11,338** new), creating a **-91** net customer loss alongside sharper churn.
  - Under RFM segmentation, revenue follows a **70/30 Pareto distribution**: **Champions** (**18.8%** of customers) drive **>54%** of sales, **Champions + Loyal** (**~28.7%** of accounts) drive **~67%** of revenue, **At Risk** and **Hibernating** contribute **8.6%** and **6.7%** of historical sales (with **Hibernating + At Risk + Lost + Cannot Lose Them** at **~37.5%** of accounts), and **New customers** contribute **<2%** of sales.

### 3. Geographical Isolation: Concentrated Regional Impact
- **Regional Hub Concentration**: Top-line revenue losses were concentrated in two top revenue-contributing provinces:
  - **West Java (2021, Rank #1 revenue contributor)**: Primary driver of the 2021 sales decline.
  - **East Java (2023, Rank #4 revenue contributor)**: Primary driver of the 2023 sales decline.

### 4. Branches Performance: Systemic Drop Across Branches in 2021 and 2023
- **Pareto Analysis in Branch Drops**: Loss distribution is broad and systemic across branches rather than isolated to a few weak locations:
  - **West Java (2020–2021)**: **265 of 510 branches (52.0%)** declined; **110 of those 265 branches (41.5%)** accounted for ~80% of the transaction drop (**3,259 lost transactions**).
  - **East Java (2022–2023)**: **52 of 89 branches (58.4%)** declined; **22 of those 52 branches (52.9%)** accounted for ~80% of the transaction drop (**684 lost transactions**).
- High **Branch Ratings (>4.0 average: 4.45 in West Java; 4.50 in East Java)**, low share of low-rated orders ($\le 3.0$ at **2.14%** in West Java and **2.36%** in East Java), and near-zero correlation (~0) between rating gaps and transaction drops rule out service quality as a primary root cause.

### 5. Product & Pricing: October Leakers Concentration, Price Cuts & Zero Discount Leakage
- **October Top-3 Leakers Concentration (78.0%–85.0%)**:
  - **West Java (Oct 2020 vs. 2021 — 78.0% of identified October sales loss)**: *Antihistamines for systemic use* (**38.9%**, IDR 104,605,499, **-10.0%** sales $\Delta$), *Other analgesics and antipyretics, Salicylic acid and derivatives* (**23.1%**, IDR 62,215,909, **-5.5%** sales $\Delta$), and *Other analgesics and antipyretics, Pyrazolones and Anilides* (**16.0%**, IDR 43,155,043, **-5.4%** sales $\Delta$).
  - **East Java (Oct 2022 vs. 2023 — 85.0% of identified October sales loss)**: *Other analgesics and antipyretics, Salicylic acid and derivatives* (**44.1%**, IDR 57,294,182, **-23.3%** sales $\Delta$), *Other analgesics and antipyretics, Pyrazolones and Anilides* (**24.6%**, IDR 31,985,202, **-17.8%** sales $\Delta$), and *Anti-inflammatory and antirheumatic products, non-steroids, Propionic acid derivatives* (**16.2%**, IDR 21,080,738, **-16.3%** sales $\Delta$), alongside recurring structural weakness in *Salicyclic acid and derivatives*.
- **Pricing & Discount Dynamics**: October list price movements across top leakers were mixed/modest (ranging from **-4.62%** to **+6.89%** in West Java and **-4.05%** to **+6.96%** in East Java), while promotional discount rates remained flat near **~0%**, ruling out October promotional discount leakage. In February, unstrategic catalog price cuts (e.g., **-7.03%** in West Java 2021; **-12.7%** and **-9.71%** in East Java 2023) failed to lift order volume.

### 6. Operational & External Disconfirmations
- **Inventory Availability (Stable)**: Average October opname inventory across top loss-contributing categories remained stable within a narrow **-3.0% to +3.7%** range, confirming that stockouts were not the constraint.
- **Basket Size & Service Quality**: AOV remained stable/slightly positive and branch/transaction ratings remained strong, pointing toward demand-side, retention, and customer attrition factors.

---

# Root Cause Analysis Summary Table

| Analysis | Result | Key Finding |
| :--- | :---: | :--- |
| **October Transaction Drop** | 🔴 **Primary Loss Driver** | Recurring **October declines** in weak years (**2020–2021** and **2022–2023**) align with annual Net Sales contractions, driven by pre-year-end purchase delays, budget caution, and volume drops while list price movements were mixed/modest. |
| **Low Retention Rate, Repeat Purchase Failure & October Attrition** | 🔴 **Primary Root Cause Driver (2021 & 2023)** | **Critically low baseline retention (1%–3%)** (and **1%–2%** in late cohorts vs. **11%–12%** early baseline) leaves revenue unprotected. In October, high attrition (**11,470** in 2020–2021; **11,429** in 2022–2023) outpaced acquisition (**11,037** and **11,338**), eroding the active customer base alongside weaker purchase frequency (**-0.8%** in 2023). |
| **Regional & Systemic Branch Sales Decline** | 🔴 **Confirmed** | Net Sales decline is concentrated in **West Java (2021, Rank #1 revenue contributor)** and **East Java (2023, Rank #4 revenue contributor)**, driven by systemic branch-wide erosion (**41.5%** of declining branches in West Java; **52.9%** in East Java contributing for ~80% of transaction drops). |
| **Transaction Volume in Key Products** | 🔴 **Primary Driver** | **Lower transaction frequency in core therapeutic categories** drove **78.0%–85.0%** of identified October sales loss across both priority provinces. |

---

# Conclusion

The Net Sales declines in **2021 (-0.55% YoY)** and **2023 (-0.59% YoY)** were driven by **October transaction volume contractions** and **customer attrition outpacing acquisition** (**-433** net customer loss in Oct 2020–2021; **-91** net customer loss in Oct 2022–2023), compounded by a **critically low retention foundation (1%–3% baseline retention; 1%–2% in late cohorts vs. 11%–12% early baseline)**, **customer churn**, and supporting factor like a lower order frequency (**-0.8%** in 2023), and pre-year-end purchase shifts, concentrated across systemic branch networks and core therapeutic categories in **West Java (2021, #1 contributor)** and **East Java (2023, #4 contributor)**.

Moving forward, commercial strategy must pivot away from acquisition-dependent growth toward **addressing customer attrition through retention and lifting purchase frequency through early triggers, RFM-based loyalty and win-back programs, targeted regional execution in West Java and East Java, and field market intelligence to investigate product-level root causes**.

---

# Actionable Strategy Recommendations

- **Shift from Acquisition-Only to Retention & Repeat Order Frequency**: Fix the **1%–3%** baseline retention drop-off and **October "leaky bucket"** attrition (**-433** in Oct 2020–2021; **-91** in Oct 2022–2023) using **14–30 day second-purchase bounce-back vouchers** and cadence-based repeat triggers so new buyers convert into recurring accounts.
- **Protect High-Value Revenue & Win Back Slipping Accounts (70/30 Pareto Focus)**: Protect **Champions** (>54% of sales) and **Champions + Loyal** (**~28.7%** of accounts driving **~67%** of revenue) without over-discounting, run targeted win-back campaigns for **At Risk** (8.6% sales share), **Hibernating** (6.7%), **Need Attention**, **About to Sleep**, and **Cannot Lose Them**, and avoid wasted paid retargeting spend on inactive **Lost** accounts.
- **Deploy Targeted Regional & Category Playbooks Instead of Broad Price Cuts**: Focus execution on **West Java (2021)** and **East Java (2023)** across systemic declining branch networks and core therapeutic lines using structured trade programs and bundling rather than across-the-board list-price cuts.

### Strategic Recommendations Summary Table

| Key Finding / Root Cause | Recommended Action | Priority & Impact |
| :--- | :--- | :--- |
| 🔴 **Critically Low Retention (1%–3%), October Attrition ("Leaky Bucket") & Churn** | **Retention, Loyalty & Win-Back Framework**:<br>• **Frequency Rewards**: Issue cashback/vouchers for maintaining regular repeat orders to counter October slowdowns and frequency drops.<br>• **Bounce-Back Vouchers**: Send time-bound vouchers (**14–30 days** post-purchase) to lift retention above **1%–3%**.<br>• **VIP Protection**: Retain *Champions & Loyal* (**~28.7%** of accounts driving **~67%** of sales) via priority benefits and structured trade bundles without over-discounting.<br>• **Automated Win-Backs**: Trigger reactivation for **At Risk**, **Hibernating**, **Need Attention**, **About to Sleep**, and **Cannot Lose Them** accounts while limiting paid retargeting on inactive **Lost** buyers. | **High Priority**<br>*(LTV Expansion, Churn Reduction & Customer Win-Back)* |
| 🔴 **October Transaction Loss in Core Categories & Priority Regions** | **Targeted Commercial & Pricing Discipline**:<br>• Focus recovery on **West Java (2021, #1 contributor — 78.0% top-3 loss share)** and **East Java (2023, #4 contributor — 85.0% top-3 loss share)** across systemic declining branch networks.<br>• Prioritize product leakers using trade programs rather than unstrategic catalog price cuts. | **High Priority**<br>*(Immediate Revenue Recovery & Margin Protection)* |
| 🔴 **October Pre-Holiday Spending Shifts & Order Frequency Softness** | **Performance Incentives & Strategic Bundling**:<br>• Launch repeat-order challenges (e.g., **2+ orders/month**) to prevent pre-year-end purchase postponement.<br>• Bundle resilient/high-demand categories (such as airway disease products) with soft therapeutic lines to support order momentum. | **High Priority**<br>*(October Volume & Repeat Order Defense)* |
| 🟠 **Unconfirmed External Demand & Substitution Factors** | **Customer Feedback & Market Intelligence**:<br>• Run short inactivity/drop-off surveys and field price/competitor checks in **West Java** and **East Java** to validate substitution or budget shifts. | **Medium Priority**<br>*(Strategic Validation)* |

---

# Interactive Dashboard & PPT

- **Looker Dashboard:** [Looker](https://datastudio.google.com/reporting/162035e9-b789-43eb-8c4e-bb0dde04e1a7)
- **PowerBI Dashboard:** [PowerBI](https://drive.google.com/file/d/1KkDZGkJFeVRkn3-3g2jlEHNoitcgFTA9/view?usp=drive_link)
- **PPT:** [Slides](https://docs.google.com/presentation/d/1d9zZ8hxcTwWHzCfweiNWnFmOmumwUQRs/edit?usp=sharing&ouid=113253202730031428002&rtpof=true&sd=true)

---

# Author

**Grace Natalie Catherine** | Big Data Analytics Project
