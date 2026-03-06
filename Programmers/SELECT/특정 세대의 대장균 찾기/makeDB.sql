-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS ECOLI_DATA;

-- 2. 대장균 데이터 테이블 생성 (PK 생략, PARENT_ID만 Null 허용)
CREATE TABLE ECOLI_DATA (
    ID INTEGER NOT NULL,
    PARENT_ID INTEGER,
    SIZE_OF_COLONY INTEGER NOT NULL,
    DIFFERENTIATION_DATE DATE NOT NULL,
    GENOTYPE INTEGER NOT NULL
);

-- 3. 데이터 삽입 (7번 개체의 부모가 3번으로 변경된 새로운 가계도 반영!)
INSERT INTO
    ECOLI_DATA (
        ID,
        PARENT_ID,
        SIZE_OF_COLONY,
        DIFFERENTIATION_DATE,
        GENOTYPE
    )
VALUES
    (1, NULL, 10, '2019-01-01', 5),
    (2, NULL, 2, '2019-01-01', 3),
    (3, 1, 100, '2020-01-01', 4),
    (4, 2, 16, '2020-01-01', 4),
    (5, 2, 17, '2020-01-01', 6),
    (6, 4, 101, '2021-01-01', 22),
    (7, 3, 101, '2022-01-01', 23),
    (8, 6, 1, '2022-01-01', 27);

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    ECOLI_DATA;