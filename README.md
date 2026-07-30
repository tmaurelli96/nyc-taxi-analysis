# NYC Taxi Analysis

## 🇬🇧 English

### Project Overview

This project analyzes New York City Yellow Taxi trip data using SQL and Power BI.

The objective is to transform large-scale transportation data into actionable business insights through SQL querying, data modeling, KPI analysis, and interactive dashboards. The project focuses on trip demand, revenue performance, geographic analysis, and operational trends.

---

### Business Questions

The analysis focuses on answering the following questions:

- Which boroughs generate the highest number of trips?
- Which pickup zones generate the highest revenue?
- What is the average fare by borough?
- Which pickup zones have the highest average trip distance?
- How does revenue evolve over time?
- Which day of the week generates the highest number of trips?
- Which trips have a fare amount above the average fare?
- Which boroughs generate more than a specified revenue threshold?
- How can revenue be summarized by pickup zone?
- How can pickup zones be ranked by revenue within each borough?

---

### Technologies Used

- SQL (DuckDB)
- DBeaver
- Power BI
- DAX
- GitHub
- Parquet Files

---

### SQL Analyses Included

#### Business Analysis

- Borough Trip Volume Analysis
- Pickup Zone Revenue Analysis
- Average Fare Analysis
- Trip Distance Analysis
- Monthly Revenue Trend Analysis
- Weekly Trip Volume Analysis

#### Advanced SQL Analysis

- Subqueries
- HAVING Clauses
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Analysis
- PARTITION BY

---

### SQL Concepts Demonstrated

- INNER JOIN
- GROUP BY
- HAVING
- Aggregate Functions (SUM, COUNT, AVG)
- Date Functions
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- RANK()
- PARTITION BY

---

### Power BI & DAX Concepts

- Data Modeling
- KPI Development
- Interactive Dashboard Design
- Calendar Table
- Time Intelligence
- CALCULATE
- FILTER
- RANKX
- Revenue YTD

---

### Dashboard Overview

The Power BI dashboard provides a business-oriented view of:

- Total Revenue
- Total Trips
- Average Fare
- Average Trip Distance
- Revenue by Borough
- Top Pickup Zones
- Revenue Trend
- Trip Volume Analysis

---

### Skills Demonstrated

- SQL Querying
- Data Analytics
- Business Intelligence
- Data Modeling
- KPI Reporting
- Dashboard Development
- Data Visualization
- Geographic Analysis
- Time Series Analysis

## Data Model

The project is built on a simplified star-schema structure composed of:
- taxi_trips: fact table containing trip-level information
- taxi_zones: dimension table containing geographic information
- calendar: date dimension used for time intelligence
 
### Data Model Diagram

![ages/data_model.png

### Relationships
 
- taxi_trips[PULocationID] → taxi_zones[LocationID]
- calendar[Date] → taxi_trips[Pickup Date]
  
This structure enables geographic analysis, trend analysis, ranking calculations and time intelligence measures.

---

## 🇮🇹 Italiano

### Descrizione del Progetto

Questo progetto analizza i dati delle corse dei taxi di New York utilizzando SQL e Power BI.

L'obiettivo è trasformare dati operativi di grandi dimensioni in informazioni utili per il supporto alle decisioni attraverso query SQL, analisi KPI, modellazione dati e dashboard interattive. L'analisi si concentra su domanda di trasporto, performance economiche, dinamiche territoriali e trend temporali.

---

### Domande di Business

L'analisi si propone di rispondere alle seguenti domande:

- Quali borough generano il maggior numero di corse?
- Quali zone di pickup generano il maggior fatturato?
- Qual è la tariffa media per borough?
- Quali zone di pickup presentano la maggiore distanza media delle corse?
- Come evolve il fatturato nel tempo?
- Quale giorno della settimana genera il maggior numero di corse?
- Quali corse presentano una tariffa superiore alla tariffa media?
- Quali borough superano una determinata soglia di fatturato?
- Come può essere costruito un riepilogo del fatturato per zona?
- Come possono essere classificate le zone in base al fatturato all'interno di ciascun borough?

---

### Tecnologie Utilizzate

- SQL (DuckDB)
- DBeaver
- Power BI
- DAX
- GitHub
- File Parquet

---

### Analisi SQL Realizzate

#### Business Analysis

- Analisi del numero di corse per Borough
- Analisi del fatturato per Zona
- Analisi della tariffa media
- Analisi della distanza media delle corse
- Analisi del trend dei ricavi
- Analisi delle corse per giorno della settimana

#### Analisi SQL Avanzate

- Subquery
- HAVING
- Common Table Expressions (CTE)
- Window Functions
- Ranking
- PARTITION BY

---

### Concetti SQL Dimostrati

- INNER JOIN
- GROUP BY
- HAVING
- Funzioni di Aggregazione (SUM, COUNT, AVG)
- Funzioni Data/Ora
- Subquery
- Common Table Expressions (CTE)
- Window Functions
- RANK()
- PARTITION BY

---

### Concetti Power BI & DAX

- Data Modeling
- KPI Development
- Dashboard Interattive
- Calendar Table
- Time Intelligence
- CALCULATE
- FILTER
- RANKX
- Revenue YTD

---

### Panoramica Dashboard

La dashboard Power BI fornisce una vista executive dei principali KPI operativi:

- Fatturato Totale
- Numero di Corse
- Tariffa Media
- Distanza Media
- Fatturato per Borough
- Top Zone di Pickup
- Trend dei Ricavi
- Analisi dei Volumi di Traffico

---

### Competenze Dimostrate

- SQL
- Data Analysis
- Business Intelligence
- KPI Reporting
- Data Modeling
- Power BI
- Dashboard Design
- Data Visualization
- Time Series Analysis
- Geographic Analytics

---
## Modello Dati 
Il progetto utilizza una struttura semplificata ispirata allo schema a stella (star schema), progettata per supportare analisi operative, geografiche e temporali.
 
### Tabelle Principali
 
**Tabella dei Fatti**
 
- taxi_trips: contiene le informazioni relative a ciascuna corsa, inclusi ricavi, distanza percorsa, dati temporali e identificativi delle zone di pickup.
 
**Tabelle Dimensionali**
- taxi_zones: contiene le informazioni geografiche delle zone taxi di New York, inclusi Borough, Zone e Service Zone.
- calendar: tabella calendario utilizzata per le analisi temporali e le misure di Time Intelligence.

 

### Diagramma del Modello Dati
 
![ages/data_model.png

### Relazioni

- taxi_trips[PULocationID] → taxi_zones[LocationID]
- calendar[Date] → taxi_trips[Pickup Date]
 
Questa struttura consente di eseguire analisi geografiche, analisi dei trend temporali, classifiche delle zone più performanti e misure avanzate di Business Intelligence tramite Power BI e DAX.


## Repository Structure

```text
nyc-taxi-analysis
│
├── sql
│   ├── 01_borough_trip_volume.sql
│   ├── 02_pickup_zone_revenue.sql
│   ├── 03_average_fare_by_borough.sql
│   ├── 04_average_trip_distance_by_zone.sql
│   ├── 05_monthly_revenue_trend.sql
│   ├── 06_trip_volume_by_weekday.sql
│   ├── 07_trips_above_average_fare.sql
│   ├── 08_high_revenue_boroughs.sql
│   ├── 09_zone_revenue_summary_cte.sql
│   └── 10_zone_revenue_ranking_by_borough.sql
│
├── powerbi
│   └── NYC_Taxi_Analysis.pbix
│
├── images
│   └── dashboard.png
│
└── README.md

**Tiziano Maurelli**

SQL • Power BI • Data Analysis • Business Intelligence • Procurement Analytics
