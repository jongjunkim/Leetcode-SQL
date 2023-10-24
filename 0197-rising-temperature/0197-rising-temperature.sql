# Write your MySQL query statement below

select id from(
  select id, recordDate, temperature, 
  lag(temperature, 1) over(order by recordDate) as "next",
  lag(recordDate, 1 ) over(order by recordDate) as "prev" from Weather) as sub
  where temperature > next and datediff(recordDate, prev) = 1
# recordDate - prev = 1
#1998-09-30 and 1998-10-01 ( A and B)
#if you indicate A.recordDate + 1 which means 1998-09-30 + 1 , MySQL will return : 1998-09-31, Not 1998-10-01




