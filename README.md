# azure-adventureworks-data-engineering
AdventureWorks Medallion Architecture – Azure Data Engineering Project
📌 Project Overview
This project demonstrates an end‑to‑end Azure Data Engineering pipeline built using the Medallion Architecture (Bronze → Silver → Gold).
The source data is the AdventureWorks dataset hosted on GitHub. The pipeline ingests, processes, and transforms this data using:

Azure Data Factory (ADF) – ingestion

Azure Data Lake Storage Gen2 (ADLS) – storage layers

Azure Databricks (PySpark) – transformation

Azure Synapse Analytics – gold layer modeling & analytics

GitHub – version control & documentation

This project is designed to showcase real‑world data engineering skills suitable for production‑grade pipelines.

🏛️ Architecture
The solution follows the Medallion Architecture:

