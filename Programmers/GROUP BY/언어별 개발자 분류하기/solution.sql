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
    ID;

-- 1. 등급 판별에 필요한 핵심 스킬들의 CODE 값을 미리 추출해 둡니다. (하드코딩 방지)
WITH SKILL_MAP AS (
    SELECT
        (
            SELECT
                SUM(CODE)
            FROM
                SKILLCODES
            WHERE
                CATEGORY = 'Front End'
        ) AS FE_CODE,
        (
            SELECT
                CODE
            FROM
                SKILLCODES
            WHERE
                NAME = 'Python'
        ) AS PY_CODE,
        (
            SELECT
                CODE
            FROM
                SKILLCODES
            WHERE
                NAME = 'C#'
        ) AS CS_CODE
),
-- 2. 비트 연산을 통해 각 개발자의 등급을 매깁니다.
GRADED_DEVS AS (
    SELECT
        CASE
            -- A등급: Front End 스킬이 있고(& 연산 시 0보다 큼) AND Python 스킬도 있음
            WHEN (SKILL_CODE & FE_CODE) > 0
            AND (SKILL_CODE & PY_CODE) > 0 THEN 'A' -- B등급: C# 스킬이 있음
            WHEN (SKILL_CODE & CS_CODE) > 0 THEN 'B' -- C등급: Front End 스킬이 있음
            WHEN (SKILL_CODE & FE_CODE) > 0 THEN 'C' -- 그 외: 등급 없음 (NULL)
        END AS GRADE,
        ID,
        EMAIL
    FROM
        DEVELOPERS
        CROSS JOIN SKILL_MAP
) -- 3. 등급이 존재하는 개발자만 골라내어 정렬합니다.
SELECT
    GRADE,
    ID,
    EMAIL
FROM
    GRADED_DEVS
WHERE
    GRADE IS NOT NULL
ORDER BY
    GRADE ASC,
    ID ASC;