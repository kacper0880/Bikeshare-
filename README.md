# 🚲 Bike Sharing Data Analytics Project

## 📌 Overview

This project analyses multi‑year bike‑sharing datasets from major UK and US providers to uncover usage patterns, demand trends, and actionable insights for urban mobility stakeholders.

The aim is to demonstrate **end‑to‑end data analytics skills**: from raw data ingestion and cleaning, through relational modelling and SQL analysis, to stakeholder‑ready dashboards and insights.

This repository is designed as a **portfolio project** suitable for data analyst, analytics consultant, or data engineering graduate roles.

---

## 🎯 Project Objectives

* Design a clean, scalable **data model** for bike‑sharing data
* Build a reproducible **ETL pipeline** for multi‑provider datasets
* Analyse usage trends by time, location, and provider
* Create clear **visual dashboards** for non‑technical stakeholders
* Demonstrate best practices in SQL, Python, and data modelling

---

## 🗂️ Data Sources

The dataset combines publicly available bike‑sharing data from:

* Bay Wheels (San Francisco)
* BlueBikes (Boston)
* Capital Bikeshare (Washington DC)
* Divvy (Chicago)
* Santander Cycles (London)

Each provider supplies trip‑level data including:

* Ride start & end timestamps
* Start & end station information
* Trip duration
* User type (where available)

> ⚠️ **Note:** Raw data was hosted on a PostgreSQL server where it was processed using SQL queries thus the raw data is not present in the folders.

---

## 🔄 ETL Pipeline

**Extract**

* Raw CSV files ingested per provider and year

**Transform**

* Data type standardisation (timestamps, numerics)
* Removal of invalid or zero‑duration trips
* Station and provider normalisation
* Derived fields (trip length in minutes, time buckets, seasons)

**Load**

* Cleaned data written to structured CSVs and PostgreSQL tables
* Ready to import into Tableau

---

## 🛠️ Tools & Technologies

* **SQL**: PostgreSQL (relational modelling & analysis)
* **Tableau**: dashboards and visual analytics
* **Git & GitHub**: version control and documentation

---

## 📊 Key Analyses

* Peak usage by hour, day, and season
* Most popular start and end stations
* Provider‑level demand comparison
* Weekday vs weekend usage behaviour
* City‑level ridership patterns

---

## 📈 Visualisations

Dashboards include:

* KPI cards (total trips, avg duration)
* Time‑series trend analysis
* Top‑N station rankings
* Geographic maps of station usage
* Provider comparison charts

All visuals are designed with **stakeholder storytelling** in mind.

---

## 🔮 Future Improvements

* Automated ETL with scheduled pipelines
* Forecasting future demand (time‑series models)
* Weather and event data integration
* Public API ingestion

---

## 👤 Author

**Kacper H**
Electronics Engineering (Computer Systems) Graduate
Trainee Data Analyst


This project is for educational and portfolio purposes only.
