# AdventureWorks Medallion Architecture – Azure Data Engineering Project

##  Project Overview
This project demonstrates an end‑to‑end Azure Data Engineering pipeline built using the Medallion Architecture (Bronze → Silver → Gold).  
The source data is the AdventureWorks dataset hosted on GitHub. The pipeline ingests, processes, and transforms this data using:

- Azure Data Factory (ADF) – ingestion  
- Azure Data Lake Storage Gen2 (ADLS) – storage layers  
- Azure Databricks (PySpark) – transformation  
- Azure Synapse Analytics – gold layer modeling & analytics
- Tableau - repoting / visualization
- GitHub – version control & documentation  

This project is designed to showcase real‑world data engineering skills suitable for production‑grade pipelines.

---

##  Architecture

Source (AdventureWorks on GitHub)  
        ↓  
Azure Data Factory (Ingestion)  
        ↓  
Azure Data Lake Storage – Bronze Layer (Raw)  
        ↓  
Azure Databricks – Silver Layer (Cleaned & Transformed)  
        ↓  
Azure Databricks – Gold Layer (Curated Business Tables)  
        ↓  
Azure Synapse Analytics (Analytics & Modeling)  
        ↓  
Reporting (Tableau / Dashboards / Insights)

---

### Bronze Layer – Ingestion (ADF)

- Ingested raw CSV files from GitHub
- Stored raw data in Bronze container in ADLS
- ADF pipeline includes linked services, datasets, and copy activities

**Repo Files**: adf/

### Silver Layer – Transformation (Databricks)

- Cleaned and transformed raw data using PySpark
- Stored processed data in Silver container

**Repo Files**: databricks/

### Gold Layer – Modeling (Synapse)

- Queried Silver data using OPENROWSET
- Created analytical Gold views for reporting
- Modeled fact and dimension views

**Repo Files**: synapse/

### Tableau Dashboard

Built an interactive dashboard using Gold views, including:

- KPI cards (Sales, Profit, Margin, AOV)
- Trend charts (Sales, Profit, Order Quantity)
- Breakdown Analysis (ProductCategory, Region, Products)

**Repo Files**: tableau/  
