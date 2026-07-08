-- Q36. High Risk Customers View
CREATE VIEW high_risk_customers AS
SELECT *
FROM aml_transactions
WHERE Customer_Risk='High';

--  View High Risk Customers
SELECT *
FROM high_risk_customers;

-- Q37. SAR Cases View
CREATE VIEW sar_cases AS
SELECT *
FROM aml_transactions
WHERE SAR_Flag='Yes';

-- View SAR Cases
SELECT *
FROM sar_cases;

-- Q38. Open Alerts View
CREATE VIEW open_alerts AS
SELECT *
FROM aml_transactions
WHERE Alert_Status='Open';

-- View Open Alerts
SELECT *
FROM open_alerts;

-- How to Verify the Views Were Created
SHOW FULL TABLES
WHERE Table_type = 'VIEW';