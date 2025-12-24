CREATE DATABASE loan_risk_analysis;
USE loan_risk_analysis;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    age INT,
    income DECIMAL(10,2),
    city VARCHAR(30)
);

CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_type VARCHAR(30),     
    loan_amount DECIMAL(12,2),
    interest_rate DECIMAL(5,2),
    loan_term_months INT,
    status VARCHAR(20),        
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE repayments (
    repayment_id INT PRIMARY KEY,
    loan_id INT,
    payment_date DATE,
    amount_paid DECIMAL(10,2),
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);