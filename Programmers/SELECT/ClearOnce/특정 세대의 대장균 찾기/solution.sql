SELECT
    ID
FROM
    ECOLI_DATA
WHERE
    PARENT_ID IN(
        SELECT
            ID
        FROM
            ECOLI_DATA
        WHERE
            PARENT_ID IN(
                SELECT
                    ID
                FROM
                    ECOLI_DATA
                WHERE
                    PARENT_ID IS NULL
            )
    )
ORDER BY
    ID;

SELECT
    E3.ID
FROM
    ECOLI_DATA E1 -- E1(1세대)의 ID를 부모로 가지는 E2(2세대)를 조인
    JOIN ECOLI_DATA E2 ON E1.ID = E2.PARENT_ID -- E2(2세대)의 ID를 부모로 가지는 E3(3세대)를 조인
    JOIN ECOLI_DATA E3 ON E2.ID = E3.PARENT_ID -- 가장 뿌리가 되는 E1은 부모가 없어야 함
WHERE
    E1.PARENT_ID IS NULL
ORDER BY
    E3.ID ASC;