# 💻 Laptop Price Analysis Project  
Data Cleaning, Feature Engineering & Exploratory Data Analysis

---

## 📌 Project Overview

The Laptop Price Analysis project focuses on analyzing a real-world laptop dataset to identify the key factors influencing laptop pricing.

This project demonstrates:

- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis (EDA)
- Data Visualization
- Business Insight Generation

The goal was to transform raw, messy data into structured information and uncover pricing patterns across brands and configurations.

---

## 🎯 Objectives

- Clean and preprocess a real-world dataset
- Handle missing values and inconsistent formats
- Extract structured features from text-based columns
- Perform exploratory data analysis (EDA)
- Identify key price-driving factors
- Generate actionable business insights

---

## 🛠 Technologies & Libraries Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Regular Expressions (re)

---

## 📂 Dataset Description

The dataset contains 1300+ laptop records with features such as:

- Company
- TypeName
- RAM
- CPU
- GPU
- Storage (Memory)
- Screen Resolution
- Weight
- Operating System
- Price

Several columns had mixed formats such as:
- "8GB" RAM
- "2.1kg" Weight
- "1TB HDD + 256GB SSD" Storage

These required preprocessing and transformation.

---

## 🧹 Data Cleaning Process

The dataset required multiple preprocessing steps:

- Removed unnecessary columns
- Checked and handled missing values
- Filled numerical missing values using median
- Filled categorical missing values using mode
- Converted RAM from text ("8GB") to numeric (8)
- Converted Weight from text ("2.1kg") to numeric (2.1)
- Standardized Operating System categories

After cleaning, the dataset became structured and analysis-ready.

---

## 🏗 Feature Engineering

New features were extracted to improve analysis.

### 🖥 Screen Features
- Touchscreen indicator (1/0)
- IPS Panel indicator
- Extracted Screen Width & Height

### 🧠 CPU Features
- CPU Brand extraction
- CPU Speed (GHz) extraction

### 💾 Storage Breakdown
Memory co

