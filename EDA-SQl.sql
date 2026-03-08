CREATE DATABASE telecom_churn;
use telecom_churn;
SELECT *
FROM telecom_customer_churn
LIMIT 10;

SELECT COUNT(*) AS total_customers
FROM telecom_customer_churn;

SELECT customer_status,
COUNT(*) AS customers
FROM telecom_customer_churn
GROUP BY customer_status;

SELECT contract,
customer_status,
COUNT(*) AS customers
FROM telecom_customer_churn
GROUP BY contract, customer_status
ORDER BY contract;

SELECT payment_method,
customer_status,
COUNT(*) AS customers
FROM telecom_customer_churn
GROUP BY payment_method, customer_status;

SELECT customer_status,
ROUND(AVG(monthly_charge),2) AS avg_monthly_charge
FROM telecom_customer_churn
GROUP BY customer_status;

SELECT customer_status,
ROUND(AVG(tenure_in_months),2) AS avg_tenure
FROM telecom_customer_churn
GROUP BY customer_status;

