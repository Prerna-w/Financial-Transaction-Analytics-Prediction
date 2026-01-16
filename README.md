# Financial-Transaction-Analytics-Prediction
📊 Financial Transaction Analytics & Prediction (Python + ML)
📌 Project Overview

This project focuses on end-to-end financial transaction analysis using Python and Machine Learning.
The objective is to analyze transaction behavior, identify risk patterns, and predict transaction outcomes using a supervised ML model.

The project covers the complete data analytics lifecycle — from data collection and cleaning to model building, evaluation, and insights generation.

🗂️ Dataset Description

The dataset consists of 2,000+ financial transaction records containing:

Transaction amount

Account details

Transaction type

Status (Success / Failed)

Customer and account attributes

Note: Personally identifiable information (PII) and identifiers were removed to avoid data leakage.

🔄 Project Workflow
1️⃣ Data Collection

Imported transaction and account data from CSV files

Verified data consistency and structure using Pandas

2️⃣ Data Cleaning & Preprocessing

Removed irrelevant columns (Transaction ID, Customer Name, Dates)

Handled missing numerical values using median imputation

Removed rows with missing target values

Encoded categorical variables using Label Encoding

Ensured only numeric features were passed to the ML model

3️⃣ Exploratory Data Analysis (EDA)

Analyzed transaction amount distribution

Identified successful vs failed transaction trends

Studied behavioral patterns across customer segments

4️⃣ Feature Engineering

Created derived features to improve predictive power

Transformed transaction amount to reduce skewness

Identified high-value transaction indicators

5️⃣ Model Building

Algorithm Used: Random Forest Classifier

Reason for selection:

Handles non-linear relationships

Works well with mixed data types

Reduces overfitting using ensemble learning

6️⃣ Model Evaluation

Evaluation Metrics Used:

Accuracy

Precision

Recall

F1-Score

Model Performance:

Accuracy: ~60%

Class 0 (Failed Transactions):
- High recall (≈79%)

Class 1 (Successful Transactions):
- Moderate precision and recall


Accuracy is realistic due to noisy real-world financial data.
Recall was prioritized to better identify high-risk failed transactions.

7️⃣ Business Insights

Failed transactions show strong behavioral patterns linked to transaction amount and account activity

High recall for failed transactions helps reduce financial risk

Model insights can support fraud detection and transaction monitoring systems

🛠️ Technologies Used

Python

Pandas, NumPy

Scikit-Learn

Matplotlib / Seaborn (EDA)

Power BI (Visualization & Reporting)

📈 Power BI Dashboard

Interactive dashboards were created to visualize:

Transaction trends

Failure rates

High-risk segments

Model predictions for decision support

🚀 Future Enhancements

Apply Gradient Boosting / XGBoost for improved performance

Add time-based features (transaction frequency, recency)

Deploy model using Flask or FastAPI

Real-time monitoring dashboard integration

📄 Conclusion

This project demonstrates a practical application of data analytics and machine learning on financial transaction data.
It emphasizes realistic model performance, strong evaluation practices, and business-oriented insights.

👩‍💻 Author

Prerna Wagh
Aspiring Data Analyst | Python | SQL | Power BI | Machine Learning

⭐ If you find this project useful, feel free to star the repository!
