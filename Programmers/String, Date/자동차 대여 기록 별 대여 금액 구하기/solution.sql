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