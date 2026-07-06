# Big Data Analytics Project: Kimia Farma Business Performance Analysis

![SQL (BigQuery)](https://img.shields.io/badge/SQL%20\(BigQuery\)-4285F4?style=for-the-badge\&logo=googlecloud\&logoColor=white)
![Looker Studio](https://img.shields.io/badge/Looker%20Studio-F9AB00?style=for-the-badge\&logo=googleanalytics\&logoColor=white)

This project was completed as part of the **Big Data Analytics Project-Based Internship Program (Rakamin x Kimia Farma)**. The project focuses on evaluating Kimia Farma's business performance between **2020 and 2023** by integrating multiple business datasets and developing an interactive dashboard to generate actionable business insights.

Dataset: [Dataset](https://drive.google.com/drive/folders/1iamlP6PxnTbGxvwC3F_Pde5UOa8L9i2e?usp=sharing)

---

# Business Context

Kimia Farma is one of Indonesia's largest integrated pharmaceutical companies, operating an extensive network of pharmacies across the country. Every day, the company generates large volumes of transactional, product, branch, and inventory data through its nationwide operations.

As business operations continue to expand, leveraging historical business data becomes increasingly important for monitoring company performance, identifying sales trends, evaluating branch performance, and understanding regional business contributions. Data-driven insights enable management to optimize operational efficiency, improve customer experience, and formulate more effective business strategies.

This project integrates transactional, product, branch, and inventory datasets to analyze Kimia Farma's business performance and transform raw data into meaningful insights through SQL and interactive business dashboards.

---

# Problem Statement

Kimia Farma operates one of Indonesia's largest pharmacy networks, generating substantial volumes of transactional data across its branches nationwide. To support business growth and operational excellence, management requires a comprehensive understanding of business performance across different regions and over time.

Without systematic analysis, it is difficult to monitor revenue trends, identify high-performing provinces, evaluate branch performance, and understand the geographical distribution of profitability. Consequently, opportunities to optimize operations and support data-driven decision-making may be overlooked.

This project aims to evaluate Kimia Farma's business performance by analyzing revenue trends from 2020 to 2023, identifying the provinces with the highest transaction volume and Net Sales, recognizing branches with the highest branch ratings but the lowest transaction ratings, and examining the geographical distribution of Net Profit across Indonesia.

By addressing these business questions, the analysis provides actionable insights to evaluate business performance, optimize branch operations, and support strategic decision-making for sustainable business growth.

---

# Goals

* Analyze year-over-year business performance using Net Sales.
* Identify the Top 10 provinces with the highest transaction volume.
* Identify the Top 10 provinces generating the highest Net Sales.
* Identify branches with the highest branch ratings but the lowest transaction ratings.
* Analyze the geographical distribution of Net Profit across Indonesia.
* Develop an interactive dashboard to support business monitoring and strategic decision-making.

---

# Dataset

The analysis integrates four business datasets:

* kf_final_transaction : Transaction records
* kf_product : Product information
* kf_kantor_cabang : Branch information
* kf_inventory : Inventory data

The datasets were integrated into a master analytical table using SQL joins in Google BigQuery before being visualized in Looker Studio.

---

# Tools

* SQL
* Google BigQuery
* Looker Studio
* Microsoft Excel

---

# Key Business Insights

* Kimia Farma generated approximately **Rp321.2 Billion** in Net Sales and **Rp91.2 Billion** in Net Profit from approximately **672.5 thousand transactions** during 2020–2023.
* Net Sales fluctuated over the four-year period, declining in 2021, recovering significantly in 2022, and decreasing again in 2023, indicating inconsistent year-over-year business growth.
* **West Java** is the strongest-performing province, contributing the highest transaction volume, Net Sales, and Net Profit, making it the company's primary revenue-generating market.
* Several branches received excellent **branch ratings (4.8–5.0)** while recording relatively lower **transaction ratings**, suggesting that operational service quality during customer transactions still requires improvement despite strong overall branch performance.
* Business profitability remains concentrated in several provinces, indicating opportunities to improve performance in lower-contributing regions through targeted business strategies.

---

# Business Recommendations

- Improve transaction efficiency and customer service quality across branches.
- Strengthen marketing investments and inventory planning in high-performing provinces such as West Java to maximize revenue potential
- Investigate the factors contributing to declining sales performance in 2023 and implement targeted promotional strategies to stimulate demand.
- Develop targeted improvement programs for underperforming regions by analyzing local customer demand and operational performance.
- Leverage  historical business data for sales forecasting, demand planning, and strategic resource allocation to support long-term business growth.

---

# Dashboard

[Dashboard](https://datastudio.google.com/reporting/162035e9-b789-43eb-8c4e-bb0dde04e1a7)

---

# 👤 Author

Grace Natalie Catherine | Big Data Analytics Portfolio Project
