SELECT
    *
FROM
    (
        SELECT
            CASE
                WHEN C.CATEGORYS LIKE '%Front End%'
                AND C.NAMES LIKE '%Python%' THEN 'A'
                WHEN C.NAMES LIKE '%C#%' THEN 'B'
                WHEN C.CATEGORYS LIKE '%Front End%' THEN 'C'
                ELSE NULL
            END GRADE,
            D.ID,
            D.EMAIL
        FROM
            DEVELOPERS D
            JOIN (
                SELECT
                    D.ID,
                    GROUP_CONCAT(S.NAME) NAMES,
                    GROUP_CONCAT(S.CATEGORY) CATEGORYS
                FROM
                    DEVELOPERS D
                    JOIN SKILLCODES S ON D.SKILL_CODE & S.CODE IS TRUE
                GROUP BY
                    D.ID
            ) C ON D.ID = C.ID
    ) A
WHERE
    GRADE IS NOT NULL
ORDER BY
    GRADE,
    ID