# Airbnb dbt Data Warehouse Project

Welcome! This repo contains a dbt project built using publicly available Airbnb data. The goal of this project was to simulate a real-world, end-to-end data pipeline and analytics workflow—focusing on warehouse modeling, orchestration, and data visualization.

---

## 🧰 Tech Stack

- **Snowflake** – Data warehouse and storage layer  
- **dbt** – Data transformation and modeling  
- **Dagster** – Orchestration and workflow scheduling  
- **Preset (Superset)** – Lightweight BI tool for data visualization  

---

## 🛠️ Project Overview

This project simulates a full-stack data workflow, beginning with raw data ingestion and ending with production-ready analytical tables and dashboards. It emphasizes best practices in data modeling, documentation, testing, and orchestration.

### 🔹 Key Steps:

1. **Warehouse Setup**
   - Created dedicated Snowflake roles and users for dbt access
   - Ingested publicly available Airbnb raw CSV data into Snowflake

2. **dbt Configuration**
   - Connected dbt to the Snowflake warehouse
   - Defined `sources` to reference raw data from the `raw` schema
   - Used `ephemeral` models for source staging to reduce storage and cost overhead

3. **Data Modeling**
   - Created **intermediate dimensional models** to stage transformations
   - Modeled **fact/mart tables** to support analytics and reporting
   - Used `view` materialization for interim models and `table` for final outputs

4. **Data Testing & Documentation**
   - Added extensive **tests** (e.g., uniqueness, null checks) in `schema.yml` to ensure data quality
   - Wrote clear, maintainable **documentation** for all key models and columns

5. **Macros**
   - Built simple **custom macros** to reduce code repetition and demonstrate reusability within the dbt project

6. **Visualization**
   - Connected final tables to [Preset](https://preset.io/) for lightweight dashboarding  
   - Example dashboard:  
     [Airbnb Superset Dashboard](https://9293b275.us2a.app.preset.io/superset/dashboard/8/?edit=true&native_filters_key=Y1a7_IfM3kydxOYLKcEj2soSFA0ooL3HtECQx-2i-480RKtCmleWJqUoDbCBkdpo)

7. **Orchestration**
   - Implemented **Dagster** to orchestrate model runs and simulate a production workflow
   - While I use Fivetran for dbt orchestration in my professional work, I chose Dagster here to highlight my experience with open-source tooling and full control over orchestration

---

## 📈 Goals & Learnings

- Practice structuring and managing a **realistic dbt project**
- Reinforce best practices in **data modeling**, **testing**, and **documentation**
- Demonstrate orchestration using **Dagster**
- Build a **clear, navigable BI layer** using Preset

---

## 📂 File Highlights

- `models/` – All dbt model files including staging, intermediate, and mart layers
- `macros/` – Reusable custom SQL macros
- `schema.yml` – Contains tests and documentation for each model
- `dashboard.yml` – Configuration file for Superset dashboard

---

## 💬 Notes

This project is a standalone showcase of my data engineering and modeling capabilities. It mirrors many of the real-world responsibilities I handle in my role as the data engineer at Acme Marinas—where I own the entire data stack from ingestion to insights.

