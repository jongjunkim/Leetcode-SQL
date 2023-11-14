
select a.author_id, a.author_name, category, sum(bs.sales*price) as TOTAL_SALES
from book b
join author a on a.author_id = b.author_id
join BOOK_SALES bs on b.BOOK_ID = bs.BOOK_ID
where SALES_DATE between DATE("2022-01-01") and DATE("2022-01-31")
group by b.author_id, b.category
order by author_id asc, category desc

#맨처음 sum(bs.sales*price) 이 부분을 sum(sales) * price로 해서 답이 맞지 않았다
#sum의 위치가 다르면 방향성은 같더라도 답이 다르게 나오게 된다.
