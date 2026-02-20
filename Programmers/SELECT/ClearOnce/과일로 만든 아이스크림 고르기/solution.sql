SELECT
    a.`FLAVOR`
FROM
    first_half a
    JOIN icecream_info b ON a.`FLAVOR` = b.`FLAVOR`
WHERE
    a.`TOTAL_ORDER` > 3000
    AND b.`INGREDIENT_TYPE` = 'fruit_based'
ORDER BY
    `TOTAL_ORDER` DESC;