SELECT
    *
FROM
    food_product
WHERE
    `PRICE` = (
        SELECT
            MAX(`PRICE`)
        FROM
            food_product
    );