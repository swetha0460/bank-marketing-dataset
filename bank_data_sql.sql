create database project;

use project;

select * 
from bank_data_clean;

-- total number of customers
select count(*) as total_customers
from bank_data_clean;

-- subcription rate of term deposits
SELECT 
    y AS subscribed, 
    COUNT(*) AS count,
    ROUND( (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM bank_data_clean)), 2) AS percentage
FROM bank_data_clean
GROUP BY y;


-- contacts by channel and their conversion rate
SELECT 
    contact,
	COUNT(*) AS total_contacts,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    (SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS conversion_rate_percentage
FROM bank_data_clean
GROUP BY contact
ORDER BY conversion_rate_percentage DESC;

-- conversion rate wrt to age category
SELECT 
    CASE 
        WHEN age < 30 THEN 'Under 30'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,
	COUNT(*) AS total_contacts,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    (SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS conversion_rate_percentage
FROM bank_data_clean
GROUP BY age_group
ORDER BY conversion_rate_percentage DESC;

-- contacts by marital status
SELECT 
    marital,
    COUNT(*) AS total_contacts,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM bank_data_clean), 2) AS marital_percentage
FROM bank_data_clean
GROUP BY marital
ORDER BY marital_percentage DESC;

-- conversion rate wrt to marital status

SELECT 
    marital,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    COUNT(*) AS total_contacts,
    ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_rate_percentage
FROM bank_data_clean
GROUP BY marital
ORDER BY conversion_rate_percentage DESC;

-- conversion rate wrt to job
SELECT 
    job,
	COUNT(*) AS total_contacts,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    (SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS conversion_rate_percentage
FROM bank_data_clean
GROUP BY job
ORDER BY conversion_rate_percentage DESC;

-- conversion rate wrt to education
SELECT 
    education,
	COUNT(*) AS total_contacts,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    (SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS conversion_rate_percentage
FROM bank_data_clean
GROUP BY education
ORDER BY conversion_rate_percentage DESC;

-- convertion rate wrt to no.of times called in campaign
SELECT 
    campaign AS calls_in_campaign,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS conversion_rate_percent
FROM bank_data_clean
GROUP BY campaign
ORDER BY campaign;

-- convertion rate wrt to default
SELECT 
    `default`,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS conversion_rate_percent
FROM bank_data_clean
GROUP BY `default`;

-- default vs loan vs housing influence on convertion rate
SELECT 
    `default`,
    loan,
    housing,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS total_subscribed,
    ROUND(
        100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS conversion_rate_percent
FROM bank_data_clean
GROUP BY `default`, loan, housing
ORDER BY conversion_rate_percent DESC;

-- wrt to previous outcome

SELECT 
    poutcome,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed_customers,
    ROUND(100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS subscription_rate_pct
FROM bank_data_clean
GROUP BY poutcome
ORDER BY subscription_rate_pct DESC;








