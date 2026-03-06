-- 1. 테이블 초기화 (항상 맨 앞에 추가, 종속성을 고려해 순서대로 삭제)
DROP TABLE IF EXISTS FISH_INFO;

DROP TABLE IF EXISTS FISH_NAME_INFO;

-- 2. 물고기 이름 정보 테이블 생성 (모두 NOT NULL)
CREATE TABLE FISH_NAME_INFO (
    FISH_TYPE INTEGER NOT NULL,
    FISH_NAME VARCHAR(255) NOT NULL
);

-- 3. 물고기 정보 테이블 생성 (LENGTH만 Null 허용)
CREATE TABLE FISH_INFO (
    ID INTEGER NOT NULL,
    FISH_TYPE INTEGER NOT NULL,
    LENGTH FLOAT,
    TIME DATE NOT NULL
);

-- 4. 데이터 삽입 (FISH_NAME_INFO)
INSERT INTO
    FISH_NAME_INFO (FISH_TYPE, FISH_NAME)
VALUES
    (0, 'BASS'),
    (1, 'SNAPPER'),
    (2, 'ANCHOVY');

-- 5. 데이터 삽입 (FISH_INFO - 총 12마리)
INSERT INTO
    FISH_INFO (ID, FISH_TYPE, LENGTH, TIME)
VALUES
    (0, 0, 30, '2021-12-04'),
    (1, 0, 50, '2020-03-07'),
    (2, 0, 40, '2020-03-07'),
    (3, 1, 20, '2022-03-09'),
    (4, 1, NULL, '2022-04-08'),
    (5, 2, 13, '2021-04-28'),
    (6, 0, 60, '2021-07-27'),
    (7, 0, 55, '2021-01-18'),
    (8, 2, 73, '2020-01-28'),
    (9, 2, 73, '2021-04-08'),
    (10, 2, 22, '2020-06-28'),
    (11, 2, 17, '2022-12-23');

-- 6. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    FISH_NAME_INFO;

SELECT
    *
FROM
    FISH_INFO;