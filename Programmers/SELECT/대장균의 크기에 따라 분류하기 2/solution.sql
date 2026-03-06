SELECT
    ID,
    CASE
        WHEN RANK() OVER(
            ORDER BY
                SIZE_OF_COLONY DESC
        ) <=(
            SELECT
                COUNT(*)
            FROM
                ECOLI_DATA
        ) * 0.25 THEN 'CRITICAL'
        WHEN RANK() OVER(
            ORDER BY
                SIZE_OF_COLONY DESC
        ) <=(
            SELECT
                COUNT(*)
            FROM
                ECOLI_DATA
        ) * 0.50 THEN 'HIGH'
        WHEN RANK() OVER(
            ORDER BY
                SIZE_OF_COLONY DESC
        ) <=(
            SELECT
                COUNT(*)
            FROM
                ECOLI_DATA
        ) * 0.75 THEN 'MEDIUM'
        ELSE 'LOW'
    END COLONY_NAME
FROM
    ECOLI_DATA
ORDER BY
    ID;

-- 1. WITH 절을 사용해 대장균들을 크기 내림차순으로 4등분(1~4그룹) 해둡니다.
WITH RANKED_ECOLI AS (
    SELECT
        ID,
        -- 크기(SIZE_OF_COLONY)를 기준으로 내림차순 정렬 후 4개의 그룹으로 나눕니다.
        NTILE(4) OVER (
            ORDER BY
                SIZE_OF_COLONY DESC
        ) AS QUARTILE
    FROM
        ECOLI_DATA
) -- 2. 나누어진 그룹 번호(1, 2, 3, 4)를 CASE WHEN을 통해 지문이 요구하는 이름으로 바꿔줍니다.
SELECT
    ID,
    CASE
        WHEN QUARTILE = 1 THEN 'CRITICAL'
        WHEN QUARTILE = 2 THEN 'HIGH'
        WHEN QUARTILE = 3 THEN 'MEDIUM'
        WHEN QUARTILE = 4 THEN 'LOW'
    END AS COLONY_NAME
FROM
    RANKED_ECOLI
ORDER BY
    ID ASC;

WITH RANKED_ECOLI AS (
    SELECT
        ID,
        -- 크기가 큰 순서대로 줄을 세우고, 상위 몇 %인지 0~1 사이 숫자로 구합니다.
        -- 예: 1등 = 0.0 / 중간 = 0.5 / 꼴등 = 1.0
        PERCENT_RANK() OVER (
            ORDER BY
                SIZE_OF_COLONY DESC
        ) AS PR
    FROM
        ECOLI_DATA
)
SELECT
    ID,
    CASE
        WHEN PR <= 0.25 THEN 'CRITICAL' -- 0.00 ~ 0.25 (상위 25% 이하)
        WHEN PR <= 0.50 THEN 'HIGH' -- 0.25 초과 ~ 0.50 (상위 50% 이하)
        WHEN PR <= 0.75 THEN 'MEDIUM' -- 0.50 초과 ~ 0.75 (상위 75% 이하)
        ELSE 'LOW' -- 나머지 하위 25%
    END AS COLONY_NAME
FROM
    RANKED_ECOLI
ORDER BY
    ID ASC;