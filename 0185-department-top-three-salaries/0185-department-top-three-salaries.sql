# Write your MySQL query statement below




Select Department, Employee, Salary 
from (select e.name as Employee , 
      e.salary as Salary , 
      dense_rank() over(partition by departmentId  order by salary desc) as "rn", 
      d.name as Department 
      from Employee e 
      join Department d on e.departmentId = d.id) as sub
where rn < 4


