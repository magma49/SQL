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

-- 4. 데이터 삽입 (ANIMAL_INS - 6마리)
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
        'A354597',
        'Cat',
        '2014-05-02 12:16:00',
        'Normal',
        'Ariel',
        'Spayed Female'
    ),
    (
        'A373687',
        'Dog',
        '2014-03-20 12:31:00',
        'Normal',
        'Rosie',
        'Spayed Female'
    ),
    (
        'A412697',
        'Dog',
        '2016-01-03 16:25:00',
        'Normal',
        'Jackie',
        'Neutered Male'
    ),
    (
        'A413789',
        'Dog',
        '2016-04-19 13:28:00',
        'Normal',
        'Benji',
        'Spayed Female'
    ),
    (
        'A414198',
        'Dog',
        '2015-01-29 15:01:00',
        'Normal',
        'Shelly',
        'Spayed Female'
    ),
    (
        'A368930',
        'Dog',
        '2014-06-08 13:20:00',
        'Normal',
        NULL,
        'Spayed Female'
    );

-- 5. 데이터 삽입 (ANIMAL_OUTS - 3마리)
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
        'A354597',
        'Cat',
        '2014-05-02 12:16:00',
        'Ariel',
        'Spayed Female'
    ),
    (
        'A373687',
        'Dog',
        '2014-03-20 12:31:00',
        'Rosie',
        'Spayed Female'
    ),
    (
        'A368930',
        'Dog',
        '2014-06-13 15:52:00',
        NULL,
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