SELECT
    E.ID,
    IFNULL(P.CNT, 0) CHILD_COUNT
FROM
    ECOLI_DATA E
    LEFT JOIN (
        SELECT
            PARENT_ID ID,
            COUNT(*) CNT
        FROM
            ECOLI_DATA
        WHERE
            PARENT_ID IS NOT NULL
        GROUP BY
            PARENT_ID
    ) P ON E.ID = P.ID
ORDER BY
    E.ID;