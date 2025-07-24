# Customer Churn Prediction Model

This repository contains the code and documentation for an end-to-end project focused on predicting customer churn for a telecommunications company. The project leverages a modern data stack to move from raw data to actionable business insights.

## Business Problem
In the competitive telecom industry, customer retention is a critical driver of profitability. The primary goal of this project was to develop a machine learning model that could accurately predict which customers are at a high risk of churning. This allows the business to proactively target these customers with retention campaigns, reducing revenue loss and improving customer loyalty.

## Project Architecture & Methodology
The entire solution was built on the **Microsoft Fabric** platform, demonstrating a modern, unified approach to data analytics. The process followed a standard data science lifecycle:

1.  **Data Ingestion & Storage:** Raw customer data was ingested and stored in a central Fabric **Lakehouse**, providing a single source of truth.
2.  **Data Cleaning & Transformation:** A **Dataflow (Gen2)** was used for initial, scalable cleaning of the raw data.
3.  **Data Modeling:** A **PySpark Notebook** was used to transform the cleansed data into a robust **Star Schema**. This industry-standard model, consisting of a dim_customer dimension and a fact_churn fact table, is crucial for optimizing analytical query performance.
4.  **Machine Learning:**
    * The prepared data was used to train a predictive model.
    * An **XGBoost** classifier, a powerful and industry-standard gradient boosting algorithm, was chosen for its high performance and accuracy.
    * The model was trained and evaluated using Python and the Scikit-learn library.
5.  **Visualization & Insights:** The model's predictions and key data insights were visualized in an interactive **Power BI** dashboard, making the results accessible to business stakeholders.

## Model Performance & Results
The final XGBoost model performed exceptionally well, achieving a **Test Accuracy of 79.77%**.

This result demonstrates the model's strong capability to predict customer churn, providing a reliable tool to identify at-risk customers. The analysis revealed that customers on month-to-month contracts were a particularly high-risk segment, providing a clear and actionable insight for the business.

## Technologies Used
* **Cloud Platform:** Microsoft Fabric
* **Data Engineering:** Azure Data Lake, Dataflow Gen2, PySpark
* **Data Modeling:** Star Schema
* **Machine Learning:** Python, Scikit-learn, XGBoost
* **Visualization:** Power BI

---
## Acknowledgements
The dataset used for this project is the "Telco Customer Churn" dataset, which is publicly available on Kaggle.
