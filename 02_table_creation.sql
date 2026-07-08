-- Q2. Create AML Transaction Table

CREATE TABLE aml_transactions (
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Transaction_ID VARCHAR(20) PRIMARY KEY,
    Transaction_Date DATE,
    Transaction_Amount INT,
    Transaction_Type VARCHAR(50),
    Country VARCHAR(50),
    Country_Risk VARCHAR(20),
    Occupation VARCHAR(50),
    Account_Age_Months INT,
    KYC_Status VARCHAR(20),
    Branch VARCHAR(50),
    Risk_Score INT,
    Customer_Risk VARCHAR(20),
    Alert_Status VARCHAR(20),
    SAR_Flag VARCHAR(10)
);

-- Q3. Verify Table Structure
DESCRIBE aml_transactions;

-- Q4. Verify Available Tables
SHOW TABLES;