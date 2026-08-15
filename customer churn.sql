create database bank_churn;

USE bank_churn;

SELECT COUNT(*) FROM [customer churn];
select top 10 * from  [customer churn];
--churn rate
SELECT ROUND(AVG(CAST(Exited AS FLOAT)) * 100, 2) AS churn_rate_pct
from [customer churn];

--churn rate by geography
SELECT Geography,
       COUNT(*) AS total_customers,
       SUM(CAST(Exited AS INT)) AS churned,
       ROUND(AVG(CAST(Exited AS FLOAT)) * 100, 2) AS churn_rate_pct
FROM [customer churn]
GROUP BY Geography
ORDER BY churn_rate_pct DESC;

--churn rate by age group
SELECT Age_Group,
       COUNT(*) AS total,
       ROUND(AVG(CAST(Exited AS FLOAT)) * 100, 2) AS churn_rate_pct
FROM [customer churn]
GROUP BY Age_Group
ORDER BY churn_rate_pct DESC;

--churn rate by no.of products
SELECT NumOfProducts,
       COUNT(*) AS total,
       ROUND(AVG(CAST(Exited AS FLOAT)) * 100, 2) AS churn_rate_pct
FROM [customer churn]
GROUP BY NumOfProducts
ORDER BY churn_rate_pct DESC;

--churn rate by active membership
SELECT IsActiveMember,
       COUNT(*) AS total,
       ROUND(AVG(CAST(Exited AS FLOAT)) * 100, 2) AS churn_rate_pct
FROM [customer churn]
GROUP BY IsActiveMember
ORDER BY churn_rate_pct DESC;

--Germany's churn rate broken down by age group
SELECT Geography,
       Age_Group,
       COUNT(*) AS total,
       SUM(CAST(Exited AS INT)) AS churned,
       ROUND(AVG(CAST(Exited AS FLOAT)) * 100, 2) AS churn_rate_pct
FROM [customer churn]
WHERE Geography = 'Germany'
GROUP BY Geography, Age_Group
ORDER BY churn_rate_pct DESC;

--geranys churn by number of products
SELECT Geography,
       NumOfProducts,
       COUNT(*) AS total,
       ROUND(AVG(CAST(Exited AS FLOAT)) * 100, 2) AS churn_rate_pct
FROM [customer churn]
WHERE Geography = 'Germany'
GROUP BY Geography, NumOfProducts
ORDER BY churn_rate_pct DESC;

SELECT
  CASE
    WHEN CreditScore < 500 THEN 'Poor (<500)'
    WHEN CreditScore < 650 THEN 'Fair (500-649)'
    WHEN CreditScore < 750 THEN 'Good (650-749)'
    ELSE 'Excellent (750+)'
  END AS CreditScoreBand,
  COUNT(*) AS total,
  ROUND(AVG(CAST(Exited AS FLOAT))*100, 2) AS churn_rate_pct
FROM [customer churn]
GROUP BY
  CASE
    WHEN CreditScore < 500 THEN 'Poor (<500)'
    WHEN CreditScore < 650 THEN 'Fair (500-649)'
    WHEN CreditScore < 750 THEN 'Good (650-749)'
    ELSE 'Excellent (750+)'
  END
ORDER BY churn_rate_pct DESC;