with S as (
    SELECT
        `DEPT_CODE`,
        MAX(`SALARY`) SALARY
    FROM
        employees
    group by
        `DEPT_CODE`
)
SELECT
    E.`DEPT_CODE`,
    E.`EMP_NAME`,
    E.`SALARY`
FROM
    employees E
    JOIN S ON S.`DEPT_CODE` = E.`DEPT_CODE`
WHERE
    S.`SALARY` = E.`SALARY`
ORDER BY
    `DEPT_CODE`;