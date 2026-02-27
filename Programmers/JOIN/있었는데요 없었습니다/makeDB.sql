-- 1. 테이블 초기화 (항상 맨 앞에 추가, 나간 동물 테이블 먼저 삭제)
DROP TABLE IF EXISTS ANIMAL_OUTS;

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

-- 3. 입양 보낸 동물 테이블 생성 (NAME만 Null 허용)
CREATE TABLE ANIMAL_OUTS (
    ANIMAL_ID VARCHAR(20) NOT NULL,
    ANIMAL_TYPE VARCHAR(20) NOT NULL,
    DATETIME DATETIME NOT NULL,
    NAME VARCHAR(50),
    SEX_UPON_OUTCOME VARCHAR(50) NOT NULL
);

-- 4. 데이터 삽입 (ANIMAL_INS)
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
        'A350276',
        'Cat',
        '2017-08-13 13:50:00',
        'Normal',
        'Jewel',
        'Spayed Female'
    ),
    (
        'A381217',
        'Dog',
        '2017-07-08 09:41:00',
        'Sick',
        'Cherokee',
        'Neutered Male'
    );

-- 5. 데이터 삽입 (ANIMAL_OUTS)
INSERT INTO
    ANIMAL_OUTS (
        ANIMAL_ID,
        ANIMAL_TYPE,
        DATETIME,
        NAME,
        SEX_UPON_OUTCOME
    )
VALUES
    (
        'A350276',
        'Cat',
        '2018-01-28 17:51:00',
        'Jewel',
        'Spayed Female'
    ),
    (
        'A381217',
        'Dog',
        '2017-06-09 18:51:00',
        'Cherokee',
        'Neutered Male'
    );

-- 6. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    ANIMAL_INS;

SELECT
    *
FROM
    ANIMAL_OUTS;