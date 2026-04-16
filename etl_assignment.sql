-- =========================================
-- DATABASE: ETL_ASSIGNMENT
-- =========================================

CREATE DATABASE ETL_ASSIGNMENT;
USE ETL_ASSIGNMENT;

CREATE TABLE raw_sales_data (
    Order_ID VARCHAR(10),
    Customer_ID VARCHAR(10),
    Sales_Amount VARCHAR(50),
    Order_Date VARCHAR(20)
);

INSERT INTO raw_sales_data VALUES
('O101','C001','4500','12-01-2024'),
('O102','C002','NULL','15-01-2024'),
('O103','C003','3200','2024/01/18'),
('O101','C001','4500','12-01-2024'),
('O104','C004','Three Thousand','20-01-2024'),
('O105','C005','5100','25-01-2024');

-- Q1: Data quality issues: duplicates, NULLs, invalid types, inconsistent dates
-- Q2: PK violation: O101 duplicated
-- Q3: Missing value: Sales_Amount NULL (O102)
-- Q4: Invalid numeric: 'Three Thousand'
-- Q5: Date formats: DD-MM-YYYY, YYYY/MM/DD
-- Q6: Not load-ready due to multiple issues
-- Q7: Pre-checks: duplicates, NULLs, types, format
-- Q8: Cleaning: remove duplicates, fix NULL, convert values, standardize dates
-- Q9: Incremental load recommended
-- Q10: BI issues: wrong totals due to bad data
