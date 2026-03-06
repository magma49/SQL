SELECT
    ORDER_ID,
    PRODUCT_ID,
    DATE_FORMAT(OUT_DATE, '%Y-%m-%d') OUT_DATE,
    IF(
        OUT_DATE IS NULL,
        '출고미정',
        IF(
            DATE_FORMAT(OUT_DATE, '%Y-%m-%d') <= '2022-05-01',
            '출고완료',
            '출고대기'
        )
    ) OUT_DATE
FROM
    FOOD_ORDER
ORDER BY
    ORDER_ID;