SELECT
    F.FLAVOR
FROM
    (
        SELECT
            FLAVOR,
            SUM(TOTAL_ORDER) TOTAL_ORDER
        FROM
            FIRST_HALF
        GROUP BY
            FLAVOR
    ) F
    LEFT JOIN (
        SELECT
            FLAVOR,
            SUM(TOTAL_ORDER) TOTAL_ORDER
        FROM
            JULY
        GROUP BY
            FLAVOR
    ) J ON F.FLAVOR = J.FLAVOR
GROUP BY
    F.FLAVOR
ORDER BY
    F.TOTAL_ORDER + IFNULL(J.TOTAL_ORDER, 0) DESC
LIMIT
    3;