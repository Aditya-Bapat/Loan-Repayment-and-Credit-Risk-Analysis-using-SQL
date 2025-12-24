INSERT INTO customers VALUES
(1, 'Rahul', 32, 600000, 'Mumbai'),
(2, 'Sneha', 28, 450000, 'Pune'),
(3, 'Amit', 40, 300000, 'Nagpur');

INSERT INTO loans VALUES
(101, 1, 'Personal Loan', 300000, 12.5, 36, 'Active'),
(102, 2, 'Education Loan', 500000, 8.5, 60, 'Active'),
(103, 3, 'Personal Loan', 200000, 14.0, 24, 'Default');

INSERT INTO repayments VALUES
(1, 101, '2024-01-10', 15000),
(2, 101, '2024-02-10', 15000),
(3, 102, '2024-01-15', 8000),
(4, 103, '2023-12-10', 5000);