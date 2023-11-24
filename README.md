# Leetcode-SQL
Collection of LeetCode SQL questions to ace the coding interview!


# Date function

* YEAR	주어진 DATETIME값의 년도 반환
* MONTHNAME	주어진 DATETIME값의 월(영문) 반환
* MONTH	주어진 DATETIME값의 월 반환
* WEEKDAY	주어진 DATETIME값의 요일값 반환(월요일: 0)
* DAYNAME	주어진 DATETIME값의 요일명 반환
* DAYOFMONTH, DAY	주어진 DATETIME값의 날짜(일) 반환

```SQL
SELECT
  OrderDate,
  YEAR(OrderDate) AS YEAR,
  MONTHNAME(OrderDate) AS MONTHNAME,
  MONTH(OrderDate) AS MONTH,
  WEEKDAY(OrderDate) AS WEEKDAY,
  DAYNAME(OrderDate) AS DAYNAME,
  DAY(OrderDate) AS DAY
FROM Orders;
```

* ADDDATE, DATE_ADD	시간/날짜 더하기
* SUBDATE, DATE_SUB	시간/날짜 빼기

```SQL
SELECT
  OrderDate,
  ADDDATE(OrderDate, INTERVAL 1 YEAR),
  ADDDATE(OrderDate, INTERVAL -2 MONTH),
  ADDDATE(OrderDate, INTERVAL 3 WEEK),
  ADDDATE(OrderDate, INTERVAL -4 DAY),
  ADDDATE(OrderDate, INTERVAL -5 MINUTE)
FROM Orders;
```

* Use Intersect instead of with CTE

```
select CART_ID from (
SELECT CART_ID from CART_PRODUCTS where Name = "Milk"
INTERSECT
SELECT CART_ID from CART_PRODUCTS where Name = "Yogurt"
) as a


https://www.yalco.kr/@sql/1-4/
