WITH RECURSIVE CTE AS(
    SELECT
        1 LEVEL,
        `EMP_ID`
    FROM
        company_org
    WHERE
        `MANAGER_ID` IS NULL
    UNION
    ALL
    SELECT
        C.LEVEL + 1 LEVEL,
        O.`EMP_ID`
    FROM
        CTE C
        JOIN company_org O ON C.`EMP_ID` = O.`MANAGER_ID`
)
SELECT
    C.`EMP_ID`,
    O.`EMP_NAME`,
    C.LEVEL
FROM
    CTE C
    JOIN company_org O ON C.`EMP_ID` = O.`EMP_ID`
ORDER BY
    C.LEVEL,
    C.`EMP_ID`;