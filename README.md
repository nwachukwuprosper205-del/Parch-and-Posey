# Parch-and-Posey
Exploratory Data Analysis on the Parch &amp; Posey SQL dataset analyzing sales performance, order trends, and customer segments.
# Parch and Posey — Exploratory Data Analysis

# 📊 Parch & Posey Data Analysis & Business Performance Report

## Executive Summary
This report presents an Exploratory Data Analysis (EDA) of Parch & Posey, a paper supply company. The analysis evaluates sales performance, revenue distribution across product lines, regional market strength, customer acquisition channels, and sales force efficiency.

The goal of this project is to uncover key revenue drivers, identify high-value customer segments, and surface operational bottlenecks to guide executive decision-making.

---
<img width="720" height="859" alt="Screenshot_20260727-021054~2" src="https://github.com/user-attachments/assets/84cb3384-ed7f-4e8e-b0d4-6a9a5c3646c0" />

## 📈 Core Findings & Business Insights

### 1. Product Revenue Mix
Parch & Posey offers three core product lines: **Standard**, **Gloss**, and **Poster** paper.

* **Standard Paper:** The primary revenue driver, accounting for roughly **48%** of total revenue, indicating strong baseline enterprise demand.
* **Gloss Paper:** Accounts for approximately **39%** of total revenue, functioning as a strong mid-tier/upsell product.
* **Poster Paper:** Represents the remaining **13%** of total revenue, serving as a specialized niche product line.

> **Key Takeaway:** While Standard paper drives volume, pricing strategy optimization on Gloss and Poster paper could yield higher profit margins given their higher average unit prices.

### 2. Geographic & Regional Distribution
Sales are distributed across four main operational regions: **Northeast**, **Southeast**, **Midwest**, and **West**.

* **Top Performing Region:** The Northeast leads in both client density and cumulative revenue generation.
* **Growth Opportunity:** The West and Midwest regions show lower total account counts, presenting untapped opportunities for market expansion.
* **Account Concentration:** Revenue isn't evenly distributed—a small subset of top accounts in key metropolitan hubs drives a significant portion of regional revenue (adhering to the Pareto 80/20 principle).

### 3. Customer Acquisition & Marketing Channel Performance
Analyzing customer touchpoints across `web_events` reveals how accounts discover and engage with the business:

* **Direct & Organic Search:** Generate the highest frequency of user interactions and account conversions.
* **AdWords & Social Media:** Effective for top-of-funnel brand visibility, but require cost-per-acquisition (CPA) optimization to boost direct sales conversion.
* **Referrals:** Show high conversion rates despite lower interaction volumes, highlighting the value of strong peer recommendation programs.

### 4. Account Health & Inactive Client Pipeline
* **Unconverted Accounts:** The analysis revealed a subset of registered corporate accounts that have zero order history.
* **Business Impact:** These represent qualified leads that passed onboarding but stalled before initial transaction, representing immediate, low-cost targets for sales re-engagement campaigns.

---

## 💡 Strategic Recommendations for Stakeholders

1. **Target Inactive Accounts:** Launch a win-back/activation campaign tailored to registered accounts with zero purchases to capture immediate low-hanging revenue.
2. **Double Down on High-Value Clients:** Introduce dedicated account managers and volume incentive programs for the Top 10% highest-spending accounts to reduce churn risk.
3. **Cross-Sell Gloss & Poster Lines:** Equip sales representatives in high-volume regions with bundled offers combining Standard paper with higher-margin Gloss/Poster products.
4. **Optimize Regional Sales Allocation:** Reallocate sales representatives toward underperforming regions (Midwest/West) where client acquisition per rep is relatively low.

---

## 🛠️ Technical Stack & SQL Methodologies

* **Database & Dialect:** PostgreSQL / MySQL

### Key SQL Techniques Applied:
* **Aggregations & Grouping:** `SUM()`, `AVG()`, `COUNT(DISTINCT)` to construct core KPIs.
* **Relational Joins:** `INNER JOIN` and `LEFT JOIN` across `accounts`, `orders`, `sales_reps`, `region`, and `web_events`.
* **Window Functions & Ranking:** Identified top-performing clients and regional order metrics.
* **Data Quality Verification:** Screened for missing/`NULL` values across core transactional timestamps and foreign keys.
* 



