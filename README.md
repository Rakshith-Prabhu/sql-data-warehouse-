# 📊 Data Warehouse and Analytics Project

Welcome to my **Data Warehouse and Analytics Project**! 🚀

This project demonstrates the design and implementation of a modern **Data Warehouse using SQL Server**, following the **Medallion Architecture (Bronze, Silver, and Gold layers)**.

The project integrates data from **ERP and CRM source systems**, performs data cleansing and transformation, builds an analytical **Star Schema**, and generates business insights using SQL.

---

## 🏗️ Data Architecture

The project follows the **Medallion Architecture**:

```text
                ┌─────────────────┐
                │   ERP CSV Files │
                └────────┬────────┘
                         │
                         ▼
┌──────────────────────────────────────────┐
│             🥉 BRONZE LAYER              │
│         Raw Data / Source Data            │
│      Loaded from ERP & CRM CSV Files      │
└────────────────────┬─────────────────────┘
                     │
                     ▼
┌──────────────────────────────────────────┐
│             🥈 SILVER LAYER              │
│       Cleaned & Transformed Data         │
│  • Data Cleaning                         │
│  • Standardization                       │
│  • Data Validation                       │
│  • Duplicate Handling                    │
└────────────────────┬─────────────────────┘
                     │
                     ▼
┌──────────────────────────────────────────┐
│              🥇 GOLD LAYER               │
│          Business-Ready Data             │
│            Star Schema Model              │
│  • Fact Tables                           │
│  • Dimension Tables                      │
└────────────────────┬─────────────────────┘
                     │
                     ▼
              📈 Analytics & Reports
```

### Bronze Layer

Stores raw data from the source systems with minimal transformation.

### Silver Layer

Cleans, standardizes, validates, and transforms the raw data to make it reliable for analysis.

### Gold Layer

Contains business-ready analytical models organized using a **Star Schema** for efficient reporting and analytics.

---

## 📖 Project Overview

The project covers the complete data warehousing lifecycle:

* Designing a modern Data Warehouse
* Implementing Bronze, Silver, and Gold layers
* Extracting data from ERP and CRM CSV files
* Loading raw data into SQL Server
* Cleaning and transforming data
* Integrating multiple source systems
* Developing Fact and Dimension tables
* Building a Star Schema
* Performing data-quality checks
* Creating SQL-based analytical reports
* Generating business insights

---

## 🎯 Project Objectives

The main objective is to develop a centralized **Data Warehouse using SQL Server** that consolidates sales data from multiple source systems and enables efficient analytical reporting.

### Key Objectives

* Integrate ERP and CRM datasets
* Improve data quality through cleansing and validation
* Transform raw data into analytical datasets
* Design a scalable and user-friendly data model
* Build Fact and Dimension tables
* Generate meaningful business insights using SQL

---

## 🛠️ Technologies Used

| Technology       | Purpose                           |
| ---------------- | --------------------------------- |
| **SQL Server**   | Data Warehouse                    |
| **SQL**          | Data Transformation & Analytics   |
| **SSMS**         | Database Management               |
| **CSV**          | Source Data                       |
| **Draw.io**      | Data Architecture & Data Modeling |
| **Git & GitHub** | Version Control                   |
| **Markdown**     | Documentation                     |

---

## 🔄 ETL Process

The project implements an **ETL (Extract, Transform, Load)** process.

### 1. Extract

Data is extracted from ERP and CRM source systems provided as CSV files.

### 2. Transform

Data is cleaned and transformed by:

* Handling missing values
* Removing duplicates
* Standardizing formats
* Validating data
* Converting data types
* Resolving data-quality issues
* Integrating related datasets

### 3. Load

The transformed data is loaded into the appropriate warehouse layers:

```text
CSV Files
    ↓
Bronze
    ↓
Silver
    ↓
Gold
    ↓
Analytics
```

---

## ⭐ Data Modeling

The Gold layer follows a **Star Schema** design consisting of:

### Fact Tables

Fact tables contain measurable business transactions such as:

* Sales
* Quantity
* Revenue
* Order information

### Dimension Tables

Dimension tables provide descriptive information such as:

* Customers
* Products
* Dates

Example:

```text
                    ┌─────────────────┐
                    │  Dim Customer   │
                    └────────┬────────┘
                             │
                             │
┌─────────────────┐    ┌─────▼───────┐    ┌─────────────────┐
│   Dim Product   │────│  Fact Sales │────│    Dim Date     │
└─────────────────┘    └─────────────┘    └─────────────────┘
```

---

## 📊 Analytics & Reporting

SQL-based analytics are developed to generate insights in the following areas:

### 👥 Customer Behavior

* Customer purchasing patterns
* Customer segmentation
* Customer revenue contribution
* Top customers

### 📦 Product Performance

* Best-selling products
* Product revenue
* Product sales volume
* Product category performance

### 📈 Sales Trends

* Total sales
* Revenue trends
* Monthly and yearly sales
* Sales growth
* Top-performing products and customers

---

## 🧪 Data Quality & Testing

Data-quality checks are performed to ensure reliable analytical results.

Examples include:

* Checking for NULL values
* Detecting duplicate records
* Validating primary keys
* Checking invalid dates
* Validating relationships between tables
* Checking data consistency
* Comparing source and target record counts

---

## 📂 Repository Structure

```text
data-warehouse-project/
│
├── datasets/
│   └── ERP and CRM CSV files
│
├── docs/
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── naming-conventions.md
│   └── requirements.md
│
├── scripts/
│   ├── bronze/
│   │   └── Raw data ingestion scripts
│   │
│   ├── silver/
│   │   └── Data cleaning and transformation scripts
│   │
│   └── gold/
│       └── Analytical model scripts
│
├── tests/
│   └── Data quality and validation scripts
│
├── README.md
├── LICENSE
├── .gitignore
└── requirements.txt
```

---

## 🚀 Key Skills Demonstrated

This project demonstrates practical experience in:

* **SQL Development**
* **SQL Server**
* **Data Warehousing**
* **ETL Development**
* **Data Engineering**
* **Data Cleaning**
* **Data Transformation**
* **Data Modeling**
* **Star Schema**
* **Fact & Dimension Tables**
* **Data Quality Testing**
* **Analytical SQL**
* **Business Intelligence**
* **Git & GitHub**

---

## 📌 Project Requirements

### Data Engineering

* Build a modern Data Warehouse using SQL Server
* Implement Bronze, Silver, and Gold layers
* Import ERP and CRM datasets
* Clean and transform source data
* Integrate multiple data sources
* Build analytical data models
* Document the data architecture and data model

### Analytics

Develop SQL-based analysis for:

* Customer Behavior
* Product Performance
* Sales Trends

---

## 📚 Documentation

Project documentation includes:

* Data Architecture
* Data Flow
* ETL Process
* Data Models
* Data Catalog
* Naming Conventions
* Business Requirements

---

## 👨‍💻 Author

**Rakshith Prabhu**

This project was developed as a portfolio project to demonstrate practical skills in **SQL, Data Warehousing, Data Engineering, Data Modeling, and Data Analytics**.
