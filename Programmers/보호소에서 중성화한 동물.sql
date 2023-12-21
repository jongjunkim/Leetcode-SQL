SELECT ai.ANIMAL_ID, ai.ANIMAL_TYPE, ai.NAME from ANIMAL_INS ai
join ANIMAL_OUTS ao on ai.ANIMAL_ID = ao.ANIMAL_ID
where ai.SEX_UPON_INTAKE <>  ao.SEX_UPON_OUTCOME

https://school.programmers.co.kr/learn/courses/30/lessons/59045
