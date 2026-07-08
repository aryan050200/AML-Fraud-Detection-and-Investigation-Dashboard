-- Q10. What is the total transaction amount?
SELECT SUM(Transaction_Amount) AS total_amount
FROM aml_transactions;

-- Q11. What is the average transaction amount?
SELECT AVG(Transaction_Amount) AS average_amount
FROM aml_transactions;

-- Q12. Which transaction type occurs most frequently?
SELECT Transaction_Type,
       COUNT(*) AS total_transactions
FROM aml_transactions
GROUP BY Transaction_Type
ORDER BY total_transactions DESC;

-- Q13. What is the customer risk distribution?
SELECT Customer_Risk,
       COUNT(*) AS total_customers
FROM aml_transactions
GROUP BY Customer_Risk;

-- Q14. What is the country risk distribution?
SELECT Country_Risk,
       COUNT(*) AS total_transactions
FROM aml_transactions
GROUP BY Country_Risk;

-- Q15. How many SAR cases exist?
SELECT SAR_Flag,
       COUNT(*) AS total_cases
FROM aml_transactions
GROUP BY SAR_Flag;

-- Q16. What is the KYC status distribution?
SELECT KYC_Status,
       COUNT(*) AS total_customers
FROM aml_transactions
GROUP BY KYC_Status;