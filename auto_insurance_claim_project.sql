-- =========================================
-- Average total of claims by age group
-- =========================================
SELECT 
	CASE 
	--conditional clause for separating the age groups
           WHEN age BETWEEN 18 AND 25 THEN '18-25'
           WHEN age BETWEEN 26 AND 35 THEN '26-35'
           WHEN age BETWEEN 36 AND 50 THEN '36-50'
           WHEN age BETWEEN 51 AND 65 THEN '51-65'
           ELSE '66+'
       END AS age_group, 
	   --counting rows in each age group
       COUNT(*) AS num_claims, 
	   --aggregating the average claim amount to two decimal places
       Round(avg(total_claim_amount),2) AS average_claim 
FROM autoinsuranceclaims
--aggregating data into age groups group
GROUP BY age_group
--order by increasing age group
ORDER BY age_group ASC;


-- ==================================================================
-- Filtering by the number of fraud claims in each state
-- ==================================================================
SELECT incident_state, COUNT(*) AS num_fraud_claims
FROM autoinsuranceclaims
WHERE fraud_reported = TRUE
GROUP BY incident_state
ORDER BY num_fraud_claims DESC;


-- =======================
-- Fraud by incident type
-- =======================
--aggregating claim amount and counting the number of fraud cases per incident
SELECT incident_type, COUNT(*) AS num_fraud_claims, SUM(total_claim_amount) AS total_fraud_claims
FROM autoinsuranceclaims
--only retrieving data where fraud was reported
WHERE fraud_reported = TRUE
GROUP BY incident_type
ORDER BY total_fraud_claims DESC;




