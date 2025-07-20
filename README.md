# AdventureWorks Sales Insights Platform – End-to-End Azure Data Engineering Project

This repository presents a complete, production-style Azure Data Engineering pipeline designed to simulate business analytics use cases for the AdventureWorks company. Built using Microsoft Azure’s modern data stack, this project delivers an integrated ETL solution from API-based ingestion to Power BI reporting, adhering to Medallion architecture (Bronze, Silver, Gold). A dedicated [GitHub Project Tracker](https://github.com/yourusername/your-repo-name/projects/1) is included to demonstrate real-world agile practices.

---

## 📄 Business Statement

> **"The Sales Operations and Strategy team at AdventureWorks needs a unified view of regional sales performance, product demand trends, and return rates across categories over the past three years (2015–2017) to make informed decisions on inventory planning and regional promotions."**

This project addresses that requirement by designing a scalable data platform that cleans, models, and visualizes multi-year sales data for strategic insight.

---

## 🧠 Learning Objectives

- Apply end-to-end data engineering principles using Azure-native tools
- Design, orchestrate, and transform big data pipelines with business relevance
- Deliver executive dashboards that support operational decision-making

---

## 🛠 Tech Stack

| Component      | Tool/Service                    |
|----------------|----------------------------------|
| Data Ingestion | Azure Data Factory              |
| Storage        | Azure Data Lake Storage Gen2    |
| Transformation | Azure Databricks (PySpark)      |
| Serving Layer  | Azure Synapse Analytics (SQL)   |
| Reporting      | Power BI                        |
| Versioning     | Git & GitHub                    |

---

## 🌐 Architecture Diagram

![Azure Medallion Architecture](./Architecture.png)

- **Bronze Layer** → Raw ingestion from HTTP API via ADF  
- **Silver Layer** → Cleaned, enriched data using PySpark in Databricks  
- **Gold Layer** → SQL-modeled views for Power BI reporting in Synapse

---

## 🔄 Project Phases

### 🔹 Phase 1 – Ingestion (ADF → Bronze Layer)
- Pulled multiple CSV files dynamically from GitHub using HTTP connector
- Implemented parameterized pipelines with ForEach activity and external JSON config
- Stored raw data in ADLS Gen2 `/bronze` container

➡️ [ADF Pipelines & Parameters](./DataFactory/Dynamic_support_live)

---

### 🔸 Phase 2 – Transformation (Databricks → Silver Layer)
- Read data from Bronze layer into Databricks notebooks
- Performed:
  - String operations, date parsing, column derivation
  - Joins across sales, returns, customers, and products
- Wrote clean Parquet outputs to `/silver` container

➡️ [Databricks Notebooks](./Databricks/Notebooks)

---

### 🟡 Phase 3 – Serving (Synapse → Gold Layer)
- Queried Parquet files in `/silver` with Synapse Serverless SQL
- Created views:
  - `vw_sales`, `vw_returns`, `vw_products`, `vw_territories`
- Modeled star schema (dim-fact) for efficient Power BI consumption

➡️ [Synapse SQL Scripts](./Synapse)

---

### 📊 Phase 4 – Visualization (Power BI)
- Connected Power BI via DirectQuery to Synapse views
- Built dynamic dashboards:
  - Monthly sales trends
  - Top-selling products & return ratios
  - Region-wise performance and KPIs

➡️ *Power BI folder not added yet — you can include screenshots or .pbix file later under `PowerBI/`*

---

## 🗂️ Folder Structure Overview

