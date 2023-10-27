# Write your MySQL query statement below

with cte as (select user_id, count(*) as total from Confirmations group by user_id),

cte1 as(select user_id, count(*) as confirm from Confirmations
where action = "confirmed" 
group by user_id )

select s.user_id, Round(ifnull(c1.confirm/c.total, 0),2) as confirmation_rate from Signups s
left join cte c on s.user_id = c.user_id
left join cte1 c1 on s.user_id = c1.user_id