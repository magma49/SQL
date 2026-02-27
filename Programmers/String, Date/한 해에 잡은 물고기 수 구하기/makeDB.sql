-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS FISH_INFO;

-- 2. 물고기 정보 테이블 생성 (PK 생략, LENGTH만 Null 허용)
CREATE TABLE FISH_INFO (
    ID INTEGER NOT NULL,
    FISH_TYPE INTEGER NOT NULL,
    LENGTH FLOAT,
    TIME DATE NOT NULL
);

-- 3. 데이터 삽입 (날짜 포맷은 표준 SQL에 맞게 하이픈(-)으로 변경)
INSERT INTO
    FISH_INFO (ID, FISH_TYPE, LENGTH, TIME)
VALUES
    (0, 0, 13.37, '2021-12-04'),
    (1, 0, 50.00, '2020-03-07'),
    (2, 0, 40.00, '2020-03-07'),
    (3, 1, 43.33, '2022-03-09'),
    (4, 1, NULL, '2022-04-08'),
    (5, 2, NULL, '2021-04-28');

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    FISH_INFO;