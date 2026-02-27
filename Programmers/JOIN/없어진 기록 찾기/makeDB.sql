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
        'A352713',
        'Cat',
        '2017-04-13 16:29:00',
        'Normal',
        'Gia',
        'Spayed Female'
    ),
    (
        'A350375',
        'Cat',
        '2017-03-06 15:01:00',
        'Normal',
        'Meo',
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
        'A349733',
        'Dog',
        '2017-09-27 19:09:00',
        'Allie',
        'Spayed Female'
    ),
    (
        'A352713',
        'Cat',
        '2017-04-25 12:25:00',
        'Gia',
        'Spayed Female'
    ),
    (
        'A349990',
        'Cat',
        '2018-02-02 14:18:00',
        'Spice',
        'Spayed Female'
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