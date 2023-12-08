-- 코드를 입력하세요
#2022-05 식품ID, 식품이름, 총매출
SELECT P.PRODUCT_ID, PRODUCT_NAME, SUM(PRICE*AMOUNT) as TOTAL_SALES 
from FOOD_PRODUCT P
join FOOD_ORDER O on P.PRODUCT_ID = O.PRODUCT_ID
where PRODUCE_DATE LIKE "2022-05-%"
group by P.PRODUCT_ID
order by  SUM(PRICE*AMOUNT) desc, P.PRODUCT_ID asc

https://school.programmers.co.kr/learn/courses/30/lessons/131117
