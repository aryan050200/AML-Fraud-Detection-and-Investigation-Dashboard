-- Q31. Total Transactions
SELECT COUNT(*) AS total_transactions
FROM aml_transactions;

-- Q32. Total Transaction Amount
SELECT SUM(Transaction_Amount) AS total_amount
FROM aml_transactions;

-- Q33. High Risk Customers
SELECT COUNT(*) AS high_risk_customers
FROM aml_transactions
WHERE Customer_Risk='High';

-- Q34. SAR Cases
SELECT COUNT(*) AS sar_cases
FROM aml_transactions
WHERE SAR_Flag='Yes';

-- Q35. Open Alerts
SELECT COUNT(*) AS open_alerts
FROM aml_transactions
WHERE Alert_Status='Open';