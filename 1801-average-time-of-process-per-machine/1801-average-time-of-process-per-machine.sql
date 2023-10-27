# Write your MySQL query statement below


with end as (select machine_id, process_id, timestamp from Activity
where activity_type = "end"),

start as (select  machine_id, process_id, timestamp from Activity 
where activity_type = "start")

select e.machine_id, Round(sum(e.timestamp - s.timestamp)/count(*),3) as processing_time from end e
join start s on e.machine_id = s.machine_id and e.process_id = s.process_id 
group by e.machine_id