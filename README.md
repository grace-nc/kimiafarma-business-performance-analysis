# Big Data Analytics Project: Kimia Farma Business Performance Analysis

![SQL (BigQuery)](https://img.shields.io/badge/SQL%20\(BigQuery\)-4285F4?style=for-the-badge\&logo=googlecloud\&logoColor=white)
![Looker Studio](https://img.shields.io/badge/Looker%20Studio-F9AB00?style=for-the-badge\&logo=googleanalytics\&logoColor=white)

This project was completed as part of the **Big Data Analytics Project-Based Internship Program (Rakamin x Kimia Farma)**. The project analyzes Kimia Farma's business performance from **2020 to 2023** using transactional, product, branch, and inventory data.

The analysis focuses on identifying **business performance trends, key contributors to Net Sales decline, and actionable strategies** using **Google BigQuery** and **Looker Studio**.

**Dataset:** [Access Dataset](https://drive.google.com/drive/folders/1iamlP6PxnTbGxvwC3F_Pde5UOa8L9i2e?usp=sharing)

---

## Business Context

Kimia Farma is one of Indonesia's largest integrated pharmaceutical companies, operating an extensive pharmacy network across the country. Its nationwide operations generate substantial volumes of transactional, product, branch, and inventory data.

As the business continues to operate across diverse regions, leveraging historical data is essential to monitor business performance, identify sales trends, evaluate branch and regional contributions, and support data-driven decision-making.

Kimia Farma experienced **Net Sales declines in 2021 and 2023**. These declines may have been influenced by various factors.

This project integrates transactional, product, branch, and inventory data to assess business performance and identify the key factors contributing to the observed Net Sales decline.

---

## Problem Statement

The key business challenge is to understand what is driving the Net Sales decline and where management attention should be prioritized.

The analysis aims to answer the following questions:

- How did Transaction Volume, Net Sales, and AOV change over time?
- Which provinces and branches contributed most significantly to the decline?
- Does branch performance or operational performance explain the transaction decline?
- Does product performance, pricing, discounts, customer spending, or seasonal effects contributing to the decline?
- What actionable strategies can be developed based on the identified drivers?

The objective is to identify the primary contributors to the Net Sales decline, assess the relative impact of potential drivers, and determine the key areas requiring further investigation and targeted action.

---

# Goals

### **1. Assess Business Performance**
### **2. Identify Key Contributors**
### **3. Evaluate Potential Drivers**
### **4. Determine the Primary Driver**
### **5. Develop Actionable Strategies**

---

# Dataset

The analysis integrates four datasets:

| Dataset                | Description                     |
| ---------------------- | ------------------------------- |
| `kf_final_transaction` | Transaction-level records       |
| `kf_product`           | Product information             |
| `kf_kantor_cabang`     | Branch and regional information |
| `kf_inventory`         | Inventory data                  |

The datasets were joined into a **master analytical table** using SQL in **Google BigQuery**.

---

# Tools

* **SQL (Google BigQuery)** — Data integration, transformation, and analysis
* **Looker Studio** — Interactive dashboard development
* **CSV / Google Drive** — Dataset management

---

# Key Business Insights

## **1. Net Sales Decline Is Transaction-Driven**

Net Sales closely followed changes in transaction volume:

* **2021:** Transactions **-0.57%** → Net Sales **-0.50%**
* **2022:** Transactions **+0.56%** → Net Sales **+0.67%**
* **2023:** Transactions **-0.70%** → Net Sales **-0.57%**

Meanwhile, AOV increased each year, indicating that the decline was primarily driven by **lower transaction volume rather than lower spending per transaction**.

## **2. West Java and East Java Are Key Areas of Decline**

* **West Java** recorded the largest absolute transaction decline in **2021**.
* **East Java** recorded the largest absolute transaction decline in **2023**.

Both provinces are among the **Top 5 contributors to Transaction Volume, Net Sales, and Net Profit**, making them key areas for further analysis.

## **3. The Decline Is Broadly Distributed Across Branches**

### West Java — 2021

* **269** declining branches
* **3,317** lost transactions
* **51.7% of branches** contributed ~**80.16%** of the total decline

### East Java — 2023

* **51** declining branches
* **686** lost transactions
* **52.9% of branches** contributed ~**80.03%** of the total decline

The decline is therefore **broadly distributed across the branch network**, rather than being isolated to a few branches.

## **4. Service Quality Is Not a Key Driver**

The correlation between **Rating Gap** and transaction decline was close to zero:

* West Java: **-0.055**
* East Java: **0.058**

This indicates that **branch/service quality does not meaningfully explain the transaction decline**.

## **5. February Decline Is a Calendar Effect**

February showed the largest monthly transaction decline, but it also has fewer operating days.

After normalizing for operating days:

* West Java: Daily transactions **+0.67%**
* East Java: Daily transactions **+1.89%**

Therefore, the February decline **does not indicate a deterioration in daily performance**.

## **6. Pricing, Discounts, and AOV Remained Relatively Stable**

Changes in commercial indicators were relatively limited:

| Indicator    | West Java | East Java |
| ------------ | --------: | --------: |
| Discount MoM |    -1.33% |    -0.15% |
| AOV MoM      |    -0.61% |    -2.26% |

Combined with the YoY increase in AOV, the findings suggest that **pricing, discounts, and customer spending per transaction were not the primary drivers**.

## **7. Decline Is Concentrated in Key Products**

The **Top 2 Key Products** contributed substantially to lost Net Sales:

* **West Java 2021:** > **Rp25M** combined lost Net Sales
* **East Java 2023:** > **Rp105M** combined lost Net Sales

Key declines included:

**West Java 2021**

* Propionic acid derivatives: **-Rp14.11M (-3.55%)**
* Anxiolytic drugs: **-Rp11.08M (-5.30%)**

**East Java 2023**

* Acetic acid derivatives: **-Rp54.14M (-14.93%)**
* Pyrazolones & Anilides: **-Rp51.32M (-11.65%)**

This shows that the decline is **concentrated in several high-impact products rather than being portfolio-wide**.


## **8. Internal Commercial Factors Do Not Fully Explain the Product Decline**

While **pricing, discounts, AOV, and branch rating gaps** remained relatively stable, significant declines occurred in specific Key Products.

---

# Actionable Strategies & Next Steps

## **1. Prioritize Key Product Recovery**

Focus recovery efforts on the **Top 2 declining Key Products**.

* Prioritize branches with the largest transaction decline.
* Rank branch–product combinations by potential Net Sales impact.
* Focus resources on the highest-impact opportunities.

**Objective:** Maximize potential Net Sales recovery through targeted product–branch interventions.


## **2. Conduct Key Product Performance Deep-Dive**

Identify the **largest and most persistent product–branch declines** and compare them with other products within the same branches.

**Objective:** Establish a focused basis for further commercial investigation.


## **3. Validate Potential External Market Demand Leakage**

Because internal commercial variables remained relatively stable, the Product-level decline should be further investigated for potential **external market demand leakage**.

**Objective:** Understand **why demand declined** and enable more targeted commercial action.

---

# Interactive Dashboard

[Dashboard](https://datastudio.google.com/reporting/162035e9-b789-43eb-8c4e-bb0dde04e1a7)

---

# Dataset

The original CSV datasets used in this project are available here:

[Dataset](https://drive.google.com/drive/folders/1iamlP6PxnTbGxvwC3F_Pde5UOa8L9i2e?usp=sharing)

---

# Author

**Grace Natalie Catherine** | Big Data Analytics Project

