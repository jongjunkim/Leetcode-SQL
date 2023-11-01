# Write your MySQL query statement below


Select "Low Salary" as category,
(select count(*) from Accounts where income < 20000) as accounts_count 
union
Select "Average Salary" as category,
(select count(*) from Accounts where income >= 20000 and income <= 50000) as accouts_count
union
Select "High Salary" as category,
(select count(*) from Accounts where income > 50000) as accounts_count