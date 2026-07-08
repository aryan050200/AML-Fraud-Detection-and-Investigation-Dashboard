-- Q5. How many records are present?

SELECT COUNT(*) AS total_records
FROM aml_transactions;

-- Q6. How many unique customers exist?

SELECT COUNT(DISTINCT Customer_ID) AS unique_customers
FROM aml_transactions;

-- Q7. Are duplicate transactions present?
SELECT Transaction_ID,
COUNT(*) AS duplicate_count
FROM aml_transactions
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;

-- Q8. Are there customers with incomplete KYC?
SELECT *
FROM aml_transactions
WHERE KYC_Status <> 'Complete';

-- Q9. Are there invalid transaction amounts?
SELECT *
FROM aml_transactions
WHERE Transaction_Amount <= 0;
