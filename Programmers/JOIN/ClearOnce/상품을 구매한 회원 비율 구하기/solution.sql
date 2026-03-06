WITH USERS AS(
    SELECT
        USER_ID
    FROM
        USER_INFO
    WHERE
        YEAR(JOINED) = 2021
)
SELECT
    YEAR(SALES_DATE) YEAR,
    MONTH(SALES_DATE) MONTH,
    COUNT(DISTINCT user_id) PURCHASED_USERS,
    ROUND(
        COUNT(DISTINCT user_id) /(
            SELECT
                COUNT(*)
            FROM
                USERS
        ),
        1
    ) PUCHASED_RATIO
FROM
    ONLINE_SALE
WHERE
    USER_ID IN (
        SELECT
            USER_ID
        FROM
            USERS
    )
GROUP BY
    YEAR(SALES_DATE),
    MONTH(SALES_DATE)
ORDER BY
    YEAR,
    MONTH