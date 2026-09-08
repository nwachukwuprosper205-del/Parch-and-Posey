# Parch and Posey — Exploratory Data Analysis
**Timeline:** Dec 2013 – Jan 2017 | **Tooling:** SQL, Power BI
# 📊 Parch & Posey Data Analysis & Business Performance Report

## Executive Summary
This report presents an Exploratory Data Analysis (EDA) of Parch & Posey, a paper supply company. The analysis evaluates sales performance, revenue distribution across product lines, regional market strength, customer acquisition channels, and sales force efficiency.

The goal of this project is to uncover key revenue drivers, identify high-value customer segments, and surface operational bottlenecks to guide executive decision-making.

---
<img width="720" height="859" alt="Screenshot_20260727-021054~2" src="https://github.com/user-attachments/assets/84cb3384-ed7f-4e8e-b0d4-6a9a5c3646c0" />

## 📈 Core Findings & Business Insights
### 1. Paper Sales Breakdown

* **Standard Paper (48% of sales):** The everyday bestseller. It brings in almost half the company’s money.
* **Gloss Paper (39% of sales):** A solid middle-tier product that sells well.
* **Poster Paper (13% of sales):** A specialty product with lower sales volume.
* **Main takeaway:** Standard paper brings in volume, but Gloss and Poster paper are sold at higher unit prices, meaning better profit potential if sales increase.

### 2. Where the Money Comes From

* **Top Region:** The Northeast brings in the most money and has the highest number of clients.
* **Growth Areas:** The West and Midwest have fewer clients, meaning there is untapped room to grow.
* **The "80/20" Rule:** A small group of big clients in major cities generates most of the total revenue.
<img width="209" height="92" alt="Screenshot (750)" src="https://github.com/user-attachments/assets/d4b0f090-2e92-4e31-a306-6903df4dc48e" />
<img width="190" height="96" alt="Screenshot (749)" src="https://github.com/user-attachments/assets/a953f3a9-7f85-41a4-ad24-b559b05deecb" />

### 3. How Clients Find the Company

* **Direct Visits & Search Engines:** Bring in the most website traffic and actual buyers.
* **Online Ads & Social Media:** Great for getting the word out, but they need to cost less per customer brought in.
* **Word of Mouth & Referrals:** Don't happen as often, but when they do, people almost always buy.

### 4. The "Ghost" Clients

* **Unconverted Leads:** Several registered accounts have never placed an order. These are warm leads who signed up but stopped before buying—making them easy targets to reach out to.

---

## What Parch & Posey Should Do Next

* **Wake Up Inactive Clients:** Reach out to the registered accounts that haven't bought anything yet with a quick promotion.
* **Protect Top Clients:** Give the top 10% biggest spenders dedicated support and volume discounts so they don't leave for competitors.
* **Bundle Products:** Encourage buyers who only order Standard paper to try Gloss or Poster paper in a discounted package deal.
* **Rebalance the Sales Team:** Move some sales reps into the West and Midwest regions to get more clients in those untapped markets.

---

## Summary of How the Data Was Processed

*(For non-technical readers: The analyst used database queries—specifically SQL—to clean up raw data, group orders by region and product type, rank top customers, and double-check that no missing or broken numbers skewed the results.)*
---
## 🗄️ Database Schema & Data Model

Below is the Entity-Relationship Diagram (ERD) detailing the primary keys (PK), foreign keys (FK), and table connections across the Parch & Posey relational database:

<img width="720" height="488" alt="Screenshot_20260907-151753" src="https://github.com/user-attachments/assets/d5740ae8-27a4-4199-8f2c-963c2b564791" />

### Key Table Relationships
* **`accounts`** acts as the core central table connecting clients to sales representatives, order transactions, and web analytics.
* **`orders`** connects to `accounts` via `account_id` (one-to-many).
* **`sales_reps`** links to `region` via `region_id` to track geographic assignments.
* **`web_events`** logs marketing channel touchpoints linked per account.
## 🛠️ Technical Stack & SQL Methodologies

* **Database & Dialect:** PostgreSQL / MySQL

### Key SQL Techniques Applied:
* **Aggregations & Grouping:** `SUM()`, `AVG()`, `COUNT(DISTINCT)` to construct core KPIs.
* **Relational Joins:** `INNER JOIN` and `LEFT JOIN` across `accounts`, `orders`, `sales_reps`, `region`, and `web_events`.
* **Window Functions & Ranking:** Identified top-performing clients and regional order metrics.
* **Data Quality Verification:** Screened for missing/`NULL` values across core transactional timestamps and foreign keys.
* 



