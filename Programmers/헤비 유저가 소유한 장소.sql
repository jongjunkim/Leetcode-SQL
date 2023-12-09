Select ID, Name, Host_Id from PLACES
where Host_Id in (SELECT HOST_ID from PLACES
group by HOST_ID having count(*) > 1) 
order by ID asc

https://school.programmers.co.kr/learn/courses/30/lessons/77487
