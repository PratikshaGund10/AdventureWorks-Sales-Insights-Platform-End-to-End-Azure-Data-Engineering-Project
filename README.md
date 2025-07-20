# AdventureWorks Sales Insights Platform – End-to-End Azure Data Engineering Project

This project delivers a scalable Azure Data Engineering solution built to power sales analytics for AdventureWorks using real-time ingestion, PySpark transformations, and cloud-native data warehousing. Designed for enterprise readiness, the project addresses business needs such as regional sales analysis, product return trends, and performance monitoring, making it ideal for data-driven decision-making.

---

## 📌 Business Statement

**The Sales Operations and Strategy team at AdventureWorks needs a unified view of regional sales performance, product demand trends, and return rates across categories over the past three years (2015–2017) to make informed decisions on inventory planning and regional promotions.**

---

## 🔧 Technologies Used

* **Azure Data Factory (ADF)** – Orchestrates data ingestion pipelines from API (GitHub) to ADLS Gen2
* **Azure Data Lake Storage Gen2 (ADLS)** – Implements Medallion Architecture with Bronze (raw), Silver (cleansed), and Gold (analytics-ready) layers
* **Azure Databricks** – Executes PySpark transformations in Silver layer
* **Azure Synapse Analytics** – Hosts Gold layer using serverless SQL pools for queryable insights
* **Power BI** – Connects to Synapse for executive-ready dashboarding
* **Git & GitHub** – Version control and DevOps readiness

---

## 🏗️ Architecture

### Medallion Architecture

* **Bronze** – Raw ingestion from GitHub via API
* **Silver** – Cleaned & enriched PySpark-transformed data
* **Gold** – Optimized and modeled tables for reporting in Synapse

---

## 🔄 Project Phases

### Phase 1 – Ingestion (Bronze Layer)

* Dynamically pull multiple CSVs from GitHub API using ADF pipelines
* Use parameters, ForEach loops, and linked services
* Store untransformed data in ADLS Gen2 Bronze container

### Phase 2 – Transformation (Silver Layer)

* Read data into Databricks from Bronze using ABFS
* Apply PySpark transformations:

  * Date parsing, string splitting, joins, aggregations
  * Creation of enriched fields (e.g., full name, extracted SKU parts)
* Store transformed data in Silver layer as Parquet
* Perform visual EDA in Databricks notebooks

### Phase 3 – Serving (Gold Layer)

* Load clean data from Silver into Azure Synapse serverless SQL pools
* Create dimensional model (facts & dimensions)
* Optimize for Power BI consumption

### Phase 4 – Visualization

* Connect Power BI to Synapse via DirectQuery
* Build visuals answering key business questions:

  * Sales by territory and time
  * Top product categories by return rates
  * Daily sales trend analysis
  * Return-to-sales ratio by region

---

## 🧪 Real-Time Scenarios Implemented

* Dynamic, config-driven ingestion via ADF pipelines
* API-based dataset sourcing
* Service Principal authentication between Databricks and ADLS
* Parameterized PySpark transformations using reusable notebooks
* Serverless SQL queries in Synapse for BI-ready reporting

---

## 💡 Why This Project?

This project helped me secure multiple data engineering offers by showcasing:

* My hands-on experience building production-ready Azure data platforms
* Proficiency in cloud-native orchestration, transformation, and warehousing
* Capability to solve real-world business problems using modern data architectures
