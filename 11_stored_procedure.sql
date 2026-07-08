-- Q45. Stored Procedure with Parameter — Filter by Risk Level
DELIMITER $$

CREATE PROCEDURE GetTransactionsByRisk(
    IN p_risk_level VARCHAR(20)
)
BEGIN
    SELECT Customer_ID,
           Customer_Name,
           Transaction_Amount,
           Country,
           Risk_Score,
           SAR_Flag
    FROM aml_transactions
    WHERE Customer_Risk = p_risk_level
    ORDER BY Transaction_Amount DESC;
END $$

DELIMITER ;

-- Call with 'High'
CALL GetTransactionsByRisk('High');

-- Call with 'Medium'
CALL GetTransactionsByRisk('Medium');

-- Call with 'Low'
CALL GetTransactionsByRisk('Low');