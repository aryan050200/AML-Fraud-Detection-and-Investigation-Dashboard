-- Q23. Create Risk Categories using CASE
SELECT Customer_ID,
       Risk_Score,
       CASE
           WHEN Risk_Score >= 80 THEN 'Critical'
           WHEN Risk_Score >= 60 THEN 'High'
           WHEN Risk_Score >= 40 THEN 'Medium'
           ELSE 'Low'
       END AS Risk_Category
FROM aml_transactions;

-- Q24. Transactions above average amount
SELECT *
FROM aml_transactions
WHERE Transaction_Amount >
(
SELECT AVG(Transaction_Amount)
FROM aml_transactions
);

-- Q25. Branches with above-average risk score
SELECT Branch,
       AVG(Risk_Score) AS avg_risk
FROM aml_transactions
GROUP BY Branch
HAVING AVG(Risk_Score) >
(
SELECT AVG(Risk_Score)
FROM aml_transactions
);

-- Q26. Monthly transaction trend
SELECT MONTH(Transaction_Date) AS month_no,
       SUM(Transaction_Amount) AS total_amount
FROM aml_transactions
GROUP BY MONTH(Transaction_Date)
ORDER BY month_no;

-- Q27. Rank customers by transaction amount
SELECT Customer_ID,
       Customer_Name,
       Transaction_Amount,
       RANK() OVER
       (
          ORDER BY Transaction_Amount DESC
       ) AS customer_rank
FROM aml_transactions;