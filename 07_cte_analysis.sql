-- Q28. High-risk customers using CTE
WITH high_risk_customers AS
(
SELECT *
FROM aml_transactions
WHERE Risk_Score > 70
)

SELECT *
FROM high_risk_customers;

-- Q29. High-risk customers with SAR Flag
WITH high_risk_customers AS
(
SELECT *
FROM aml_transactions
WHERE Risk_Score > 70
)

SELECT Customer_ID,
       Customer_Name,
       Risk_Score,
       SAR_Flag
FROM high_risk_customers
WHERE SAR_Flag='Yes';

-- Q30. Branch risk analysis using CTE
WITH branch_risk AS
(
SELECT Branch,
       AVG(Risk_Score) AS avg_risk
FROM aml_transactions
GROUP BY Branch
)

SELECT *
FROM branch_risk