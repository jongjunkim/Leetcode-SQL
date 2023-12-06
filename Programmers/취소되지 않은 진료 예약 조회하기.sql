-- 코드를 입력하세요
# 4월 13일 취소되지 않은 흉부외과 (CS)
#진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일
# 진료 예약일시 기준
SELECT APNT_NO, P.PT_NAME, P.PT_NO, D.MCDP_CD, D.DR_NAME, APNT_YMD
from APPOINTMENT A 
join DOCTOR D on A.MDDR_ID = D.	DR_ID
join PATIENT P on P.PT_NO = A.PT_NO
where D.MCDP_CD = 'CS' and DATE(APNT_YMD) = "2022-04-13"
and APNT_CNCL_YMD is NULL
order by APNT_YMD

https://school.programmers.co.kr/learn/courses/30/lessons/132204
