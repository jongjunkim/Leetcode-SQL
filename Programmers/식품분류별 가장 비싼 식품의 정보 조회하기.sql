select CATEGORY, PRICE, PRODUCT_NAME 
from(
select PRICE, PRODUCT_NAME, CATEGORY,
row_number() over(partition by CATEGORY order by price desc) rn
from FOOD_PRODUCT) sub
where sub.rn = 1 and (sub.CATEGORY = "과자" or sub.CATEGORY = "국" or 
                      sub.CATEGORY = "김치" or sub.CATEGORY = "식용유")
                     order by PRICE desc

https://school.programmers.co.kr/learn/courses/30/lessons/131116
