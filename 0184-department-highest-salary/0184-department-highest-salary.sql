# Write your MySQL query statement below


select sub.Department, sub.Employee, sub.Salary from(
      select e.name as Employee, 
      salary, 
      rank() over(partition by departmentId order by salary desc) as "rank", 
      d.name as Department from employee e
      join Department d on e.departmentId = d.id) as sub
where sub.rank = 1
