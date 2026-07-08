-- Q17. Top 10 highest transactions
SELECT Transaction_ID,
       Customer_Name,
       Transaction_Amount
FROM aml_transactions
ORDER BY Transaction_Amount DESC
LIMIT 10;

-- Q18. Top 10 highest risk customers
SELECT Customer_ID,
       Customer_Name,
       Risk_Score
FROM aml_transactions
ORDER BY Risk_Score DESC
LIMIT 10;

-- Q19. Which branches process the highest transaction amount?
SELECT Branch,
       SUM(Transaction_Amount) AS total_amount
FROM aml_transactions
GROUP BY Branch
ORDER BY total_amount DESC;

-- Q20. Which occupations have highest average risk?
SELECT Occupation,
       AVG(Risk_Score) AS avg_risk
FROM aml_transactions
GROUP BY Occupation
ORDER BY avg_risk DESC;

-- Q21. Which countries generate highest transaction amount?
SELECT Country,
       SUM(Transaction_Amount) AS total_amount
FROM aml_transactions
GROUP BY Country
ORDER BY total_amount DESC;

-- Q22. Which high-risk customers have SAR flags?
SELECT Customer_ID,
       Customer_Name,
       Customer_Risk,
       SAR_Flag
FROM aml_transactions
WHERE Customer_Risk='High'
AND SAR_Flag='Yes';