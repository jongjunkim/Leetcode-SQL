# Write your MySQL query statement below

with q1 as (
select *, id - row_number() over() as id_diff #if ids are consecutive, the rownumber - id will remain the same.
from stadium
where people > 99
)
select id, visit_date, people
from q1
where id_diff in (select id_diff from q1 group by id_diff having count(*) > 2) #it will retrieve only the ones who has  
order by visit_date                                                            # more than 2 rows