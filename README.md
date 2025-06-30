# Azure Data Engineering Project – End-to-End Pipeline (ADF, ADLS, Databricks, Synapse)

This project demonstrates an end-to-end Azure Data Engineering solution using real-time scenarios. It showcases dynamic ingestion, transformations with PySpark, and serving data via Synapse Analytics and Power BI. Designed to simulate enterprise-scale pipelines, it also illustrates version control and DevOps readiness.

---

## 📌 Technologies Used
- **Azure Data Factory (ADF)** – Orchestration of ingestion pipelines (HTTP/API to ADLS Gen2)
- **Azure Data Lake Storage Gen2 (ADLS)** – Bronze, Silver, Gold zones (Medallion Architecture)
- **Azure Databricks** – PySpark-based transformations in the silver layer
- **Azure Synapse Analytics** – Serving layer with SQL data warehousing
- **Power BI** – Dashboard connection to Synapse
- **Git & GitHub** – Version control and collaboration

---

## 🏗️ Architecture
![Medallion Architecture](architecture/medallion_architecture.png)

> Medallion architecture with Bronze (raw), Silver (cleansed), and Gold (analytics-ready) zones.

---

## 🔄 Project Phases
### Phase 1 – Ingestion (Bronze)
- Pull multiple CSVs from GitHub via ADF pipelines using parameters and dynamic datasets
- Store as-is in ADLS Gen2 Bronze container

### Phase 2 – Transformation (Silver)
- Use Databricks to apply PySpark transformations (date parsing, splitting strings, joins, enrichments)
- Store clean data in Silver zone as Parquet files
- Generate visual insights in notebooks

### Phase 3 – Serving (Gold)
- Load data into Synapse SQL pools from Silver
- Create views, facts, and dimensions for reporting

### Phase 4 – Visualization
- Connect Power BI to Synapse using direct query
- Build executive-ready reports

---

## 🧪 Real-Time Scenarios Implemented
- Dynamic pipelines with `ForEach`, parameters, and config-driven ingestion
- Service principal authentication for Databricks-to-ADLS
- PySpark transformations: string splits, date functions, aggregations
- Serverless querying in Synapse SQL

---

## 💡 Why This Project?
This project helped me crack multiple interviews and confidently showcase:
- My Azure Data Engineering expertise
- Proficiency in Git, orchestration, and big data transformation
- Real-world readiness for enterprise data pipelines
