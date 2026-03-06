SELECT
    *
FROM
    (
        SELECT
            A.CAR_ID,
            C.CAR_TYPE,
            ROUND(C.DAILY_FEE * 30 *(100 - P.DISCOUNT_RATE) / 100) FEE
        FROM
            (
                SELECT
                    CAR_ID,
                    MAX(
                        CASE
                            WHEN END_DATE < '2022-11-01'
                            OR START_DATE > '2022-11-30' THEN '대여가능'
                            ELSE '대여중'
                        END
                    ) AVAIL
                FROM
                    CAR_RENTAL_COMPANY_RENTAL_HISTORY
                GROUP BY
                    CAR_ID
            ) A
            JOIN CAR_RENTAL_COMPANY_CAR C ON C.CAR_ID = A.CAR_ID
            JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN P ON C.CAR_TYPE = P.CAR_TYPE
        WHERE
            A.AVAIL LIKE '%가능'
            AND C.CAR_TYPE IN('세단', 'SUV')
            AND P.DURATION_TYPE = '30일 이상'
        ORDER BY
            FEE DESC,
            C.CAR_TYPE,
            A.CAR_ID DESC
    ) B
WHERE
    FEE >= 500000
    AND FEE < 2000000
ORDER BY
    FEE DESC,
    CAR_TYPE,
    CAR_ID DESC