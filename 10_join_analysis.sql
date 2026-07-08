-- Q39. Create Country Risk Reference Table
CREATE TABLE country_risk_reference (
    Country       VARCHAR(50) PRIMARY KEY,
    Risk_Level    VARCHAR(20),
    Risk_Score    INT,
    Region        VARCHAR(50)
);

-- Q40. Insert Country Reference Data
INSERT INTO country_risk_reference VALUES
('India',       'Low',    20, 'Asia'),
('USA',         'Low',    25, 'Americas'),
('UK',          'Low',    22, 'Europe'),
('Germany',     'Low',    18, 'Europe'),
('Canada',      'Low',    21, 'Americas'),
('Singapore',   'Low',    19, 'Asia'),
('UAE',         'High',   75, 'Middle East'),
('Iran',        'High',   90, 'Middle East'),
('Nigeria',     'High',   85, 'Africa'),
('Pakistan',    'High',   80, 'Asia');

-- Q41. INNER JOIN — Transactions with Country Risk Details
SELECT t.Transaction_ID,
       t.Customer_Name,
       t.Transaction_Amount,
       t.Country,
       c.Risk_Level,
       c.Risk_Score AS Country_Risk_Score,
       c.Region
FROM aml_transactions t
INNER JOIN country_risk_reference c
ON t.Country = c.Country;

-- Q42. JOIN — High Risk Customers in High Risk Countries
SELECT t.Customer_ID,
       t.Customer_Name,
       t.Transaction_Amount,
       t.Customer_Risk,
       c.Risk_Level AS Country_Risk_Level,
       c.Region
FROM aml_transactions t
INNER JOIN country_risk_reference c
ON t.Country = c.Country
WHERE t.Customer_Risk = 'High'
AND c.Risk_Level = 'High';

-- Q43. JOIN with Aggregation — Total Amount by Region
SELECT c.Region,
       COUNT(t.Transaction_ID) AS total_transactions,
       SUM(t.Transaction_Amount) AS total_amount,
       AVG(t.Risk_Score) AS avg_risk_score
FROM aml_transactions t
INNER JOIN country_risk_reference c
ON t.Country = c.Country
GROUP BY c.Region
ORDER BY total_amount DESC;
