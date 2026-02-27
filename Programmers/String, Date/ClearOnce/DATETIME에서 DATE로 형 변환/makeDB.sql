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

-- 3. 데이터 삽입 (새로운 5마리의 데이터)
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
        'A349996',
        'Cat',
        '2018-01-22 14:32:00',
        'Normal',
        'Sugar',
        'Neutered Male'
    ),
    (
        'A350276',
        'Cat',
        '2017-08-13 13:50:00',
        'Normal',
        'Jewel',
        'Spayed Female'
    ),
    (
        'A350375',
        'Cat',
        '2017-03-06 15:01:00',
        'Normal',
        'Meo',
        'Neutered Male'
    ),
    (
        'A352555',
        'Dog',
        '2014-08-08 04:20:00',
        'Normal',
        'Harley',
        'Spayed Female'
    ),
    (
        'A352713',
        'Cat',
        '2017-04-13 16:29:00',
        'Normal',
        'Gia',
        'Spayed Female'
    );

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    ANIMAL_INS;