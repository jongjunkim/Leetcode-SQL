# Write your MySQL query statement below


select id,
case 
    when p_id is not NULL then 
        (case
        when id in (select p_id from tree) then 'Inner'
        else 'Leaf'
        end)
    else 'Root' 
end as type
from Tree