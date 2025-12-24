# Loan-Repayment-and-Credit-Risk-Analysis-using-SQL
This project focuses on analyzing loan and repayment data using SQL to understand loan performance and basic credit risk indicators. The goal is to demonstrate how SQL can be used to structure financial data and answer practical business questions related to loans and repayments.

The project is developed using MySQL and covers database creation, data insertion, and analysis using SQL queries.

**Dataset Description**
The dataset is self-created to simulate a simple loan management system.
Tables Used
1) customers: Stores customer details such as age, income, and city, which help in understanding borrower profiles.
2) loans: Contains loan-related information including loan type, loan amount, interest rate, loan duration, and loan status (Active or Default).
3) repayments: Stores repayment transactions made by customers against their loans.

**Database Design**
The database follows a relational structure:
1) One customer can have multiple loans
2) One loan can have multiple repayment records
3) This design reflects how loan and repayment data is typically organized in real-world financial systems.

**Key Analysis Performed**
Analyzed total loan amounts by loan type to understand loan distribution
Identified defaulted loans to track basic credit risk
Compared loan amounts with customer income as a simple risk indicator
Calculated total repayment amounts for each loan
Highlighted loans with low repayment levels that may require closer monitoring
