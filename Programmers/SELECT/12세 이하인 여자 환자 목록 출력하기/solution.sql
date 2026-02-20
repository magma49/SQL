SELECT
    `PT_NO`,
    `PT_NAME`,
    `GEND_CD`,
    `AGE`,
    IFNULL (`TLNO`, 'NONE') as `TLNO`
FROM
    patient
WHERE
    `AGE` <= 12
    and `GEND_CD` = 'W'
ORDER BY
    `AGE` DESC,
    `PT_NAME`;