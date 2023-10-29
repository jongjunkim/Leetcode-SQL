# Write your MySQL query statement below


select query_name, 
Round(AVG(rating /position),2) as quality, # sum(rating /position)/count(*)
Round(( sum(rating< 3) /count(*)) * 100,2) as poor_query_percentage
 from Queries
group by query_name