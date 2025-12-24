-- Total loan amount by loan type
SELECT loan_type,
       SUM(loan_amount) AS total_loan_amount
FROM loans
GROUP BY loan_type;

-- Identify defaulted loans
SELECT loan_id, customer_id, loan_amount
FROM loans
WHERE status = 'Default';

-- Customers with high loan-to-income ratio (Risk Indicator)
SELECT c.customer_name,
       l.loan_amount,
       c.income,
       (l.loan_amount / c.income) AS loan_income_ratio
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
WHERE (l.loan_amount / c.income) > 1;

-- Total amount repaid per loan 
SELECT loan_id,
       SUM(amount_paid) AS total_repaid
FROM repayments
GROUP BY loan_id;

-- Loans with low repayment (Potential Default Risk)
SELECT l.loan_id,
       l.loan_amount,
       IFNULL(SUM(r.amount_paid), 0) AS total_repaid
FROM loans l
LEFT JOIN repayments r ON l.loan_id = r.loan_id
GROUP BY l.loan_id, l.loan_amount
HAVING total_repaid < (l.loan_amount * 0.2);
