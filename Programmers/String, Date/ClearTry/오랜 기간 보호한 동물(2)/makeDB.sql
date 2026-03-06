-- 1. 테이블 초기화 (항상 맨 앞에 추가, 종속성을 고려해 입양 테이블 먼저 삭제)
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

-- 4. 데이터 삽입 (ANIMAL_INS - 총 4마리)
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
        'A362707',
        'Dog',
        '2016-01-27 12:27:00',
        'Sick',
        'Girly Girl',
        'Spayed Female'
    ),
    (
        'A370507',
        'Cat',
        '2014-10-27 14:43:00',
        'Normal',
        'Emily',
        'Spayed Female'
    ),
    (
        'A414513',
        'Dog',
        '2016-06-07 09:17:00',
        'Normal',
        'Rocky',
        'Neutered Male'
    );

-- 5. 데이터 삽입 (ANIMAL_OUTS - 총 3마리)
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
        '2014-06-03 12:30:00',
        'Ariel',
        'Spayed Female'
    ),
    (
        'A362707',
        'Dog',
        '2017-01-10 10:44:00',
        'Girly Girl',
        'Spayed Female'
    ),
    (
        'A370507',
        'Cat',
        '2015-08-15 09:24:00',
        'Emily',
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