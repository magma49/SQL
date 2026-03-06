-- 코드를 입력하세요
SELECT
    B.HISTORY_ID,
    CASE
        WHEN DATEDIFF(B.END_DATE, B.START_DATE) + 1 >= 90 then ROUND(
            (DATEDIFF(B.END_DATE, B.START_DATE) + 1) * A.DAILY_FEE * (
                100 -(
                    SELECT
                        DISCOUNT_RATE
                    FROM
                        CAR_RENTAL_COMPANY_DISCOUNT_PLAN
                    WHERE
                        CAR_TYPE = '트럭'
                        AND SUBSTR(DURATION_TYPE, 1, 1) = 9
                )
            ) / 100
        )
        when DATEDIFF(B.END_DATE, B.START_DATE) + 1 >= 30 then ROUND(
            (DATEDIFF(B.END_DATE, B.START_DATE) + 1) * A.DAILY_FEE * (
                100 -(
                    SELECT
                        DISCOUNT_RATE
                    FROM
                        CAR_RENTAL_COMPANY_DISCOUNT_PLAN
                    WHERE
                        CAR_TYPE = '트럭'
                        AND SUBSTR(DURATION_TYPE, 1, 1) = 3
                )
            ) / 100
        )
        WHEN DATEDIFF(B.END_DATE, B.START_DATE) + 1 >= 7 THEN ROUND(
            (DATEDIFF(B.END_DATE, B.START_DATE) + 1) * A.DAILY_FEE * (
                100 -(
                    SELECT
                        DISCOUNT_RATE
                    FROM
                        CAR_RENTAL_COMPANY_DISCOUNT_PLAN
                    WHERE
                        CAR_TYPE = '트럭'
                        AND SUBSTR(DURATION_TYPE, 1, 1) = 7
                )
            ) / 100
        )
        ELSE (DATEDIFF(B.END_DATE, B.START_DATE) + 1) * A.DAILY_FEE
    END FEE
FROM
    CAR_RENTAL_COMPANY_CAR A
    JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY B ON A.CAR_ID = B.CAR_ID
WHERE
    A.CAR_TYPE = '트럭'
ORDER BY
    FEE DESC,
    B.HISTORY_ID DESC;

-- 1. WITH 절을 사용해 '대여 기간'과 '할인 기준 문자열'을 미리 계산해둔 가상의 덩어리를 만듭니다.
WITH TRUCK_RENTAL AS (
    SELECT
        H.HISTORY_ID,
        C.DAILY_FEE,
        C.CAR_TYPE,
        (DATEDIFF(H.END_DATE, H.START_DATE) + 1) AS RENTAL_DAYS,
        CASE
            WHEN DATEDIFF(H.END_DATE, H.START_DATE) + 1 >= 90 THEN '90일 이상'
            WHEN DATEDIFF(H.END_DATE, H.START_DATE) + 1 >= 30 THEN '30일 이상'
            WHEN DATEDIFF(H.END_DATE, H.START_DATE) + 1 >= 7 THEN '7일 이상'
            ELSE '할인없음' -- 7일 미만이라 할인이 없는 경우
        END AS DURATION_TYPE
    FROM
        CAR_RENTAL_COMPANY_RENTAL_HISTORY H
        JOIN CAR_RENTAL_COMPANY_CAR C ON H.CAR_ID = C.CAR_ID
    WHERE
        C.CAR_TYPE = '트럭'
) -- 2. 만들어둔 덩어리(TRUCK_RENTAL)에 할인 정책 테이블을 JOIN하여 최종 금액을 계산합니다.
SELECT
    R.HISTORY_ID,
    -- 소수점 절사를 위해 FLOOR 사용, IFNULL로 할인이 없는 경우 0% 처리
    FLOOR(
        R.DAILY_FEE * R.RENTAL_DAYS * (100 - IFNULL(P.DISCOUNT_RATE, 0)) / 100
    ) AS FEE
FROM
    TRUCK_RENTAL R
    LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN P ON R.CAR_TYPE = P.CAR_TYPE
    AND R.DURATION_TYPE = P.DURATION_TYPE
ORDER BY
    FEE DESC,
    R.HISTORY_ID DESC;