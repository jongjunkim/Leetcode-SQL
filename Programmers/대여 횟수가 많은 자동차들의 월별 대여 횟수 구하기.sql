Select MONTH(START_DATE) MONTH, CAR_ID, count(CAR_ID) as RECORDS from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
where CAR_ID in (
SELECT CAR_ID from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
where START_DATE > "2022-07-31"
and   START_DATE < "2022-11-1"
group by CAR_ID having count(*) >= 5)
AND START_DATE BETWEEN "2022-08-01" AND "2022-10-31" #다시한번 startDate이 08-01이고 10-30인거를 해줘야함
group by MONTH(START_DATE), CAR_ID
order by MONTH asc, CAR_ID desc
