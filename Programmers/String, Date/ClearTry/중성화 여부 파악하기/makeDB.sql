-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS ANIMAL_INS;

-- 2. 보호소 유입 동물 테이블 생성 (NAME만 Null 허용)
CREATE TABLE ANIMAL_INS (
    ANIMAL_ID VARCHAR(20) NOT NULL,
    ANIMAL_TYPE VARCHAR(20) NOT NULL,
    DATETIME DATETIME NOT NULL,
    INTAKE_CONDITION VARCHAR(20) NOT NULL,
    NAME VARCHAR(50),
    SEX_UPON_INTAKE VARCHAR(50) NOT NULL
);

-- 3. 데이터 삽입 (새로운 3마리의 데이터)
INSERT INTO
    ANIMAL_INS (
        ANIMAL_ID,
        ANIMAL_TYPE,
        DATETIME,
        INTAKE_CONDITION,
        NAME,
        SEX_UPON_INTAKE
    )
VALUES
    (
        'A355753',
        'Dog',
        '2015-09-10 13:14:00',
        'Normal',
        'Elijah',
        'Neutered Male'
    ),
    (
        'A373219',
        'Cat',
        '2014-07-29 11:43:00',
        'Normal',
        'Ella',
        'Spayed Female'
    ),
    (
        'A382192',
        'Dog',
        '2015-03-13 13:14:00',
        'Normal',
        'Maxwell 2',
        'Intact Male'
    );

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    ANIMAL_INS;