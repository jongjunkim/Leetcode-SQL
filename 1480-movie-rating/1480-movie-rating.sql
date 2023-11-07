# Write your MySQL query statement below


With a as(select sum(rating)/count(user_id) as rating, movie_id from movieRating
where created_at between '2020-02-01' and '2020-02-29'
group by movie_id),

b as(select user_id, count(user_id) as high from MovieRating
group by user_id)


 
(select u.name as results from b
join users u on b.user_id = u.user_id
order by b.high desc, u.name asc limit 1)
union all
(select title as results from movies m
join a on a.movie_id = m.movie_id
order by a.rating desc, title asc limit 1)