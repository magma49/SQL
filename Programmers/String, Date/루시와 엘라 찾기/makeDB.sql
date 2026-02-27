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
        'A373219',
        'Cat',
        '2014-07-29 11:43:00',
        'Normal',
        'Ella',
        'Spayed Female'
    ),
    (
        'A377750',
        'Dog',
        '2017-10-25 17:17:00',
        'Normal',
        'Lucy',
        'Spayed Female'
    ),
    (
        'A353259',
        'Dog',
        '2016-05-08 12:57:00',
        'Injured',
        'Bj',
        'Neutered Male'
    ),
    (
        'A354540',
        'Cat',
        '2014-12-11 11:48:00',
        'Normal',
        'Tux',
        'Neutered Male'
    ),
    (
        'A354597',
        'Cat',
        '2014-05-02 12:16:00',
        'Normal',
        'Ariel',
        'Spayed Female'
    );

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    ANIMAL_INS;