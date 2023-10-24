# Write your MySQL query statement below

select A.id from Weather A, Weather B where Datediff(A.recordDate, B.recordDate) = 1 and A.temperature > B.temperature 
# recordDate - prev = 1
#1998-09-30 and 1998-10-01 ( A and B)
#if you indicate A.recordDate + 1 which means 1998-09-30 + 1 , MySQL will return : 1998-09-31, Not 1998-10-01




