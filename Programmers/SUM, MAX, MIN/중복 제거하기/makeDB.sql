drop TABLE animal_ins;

CREATE TABLE
    IF NOT EXISTS ANIMAL_INS (
        ANIMAL_ID VARCHAR(20) NOT NULL,
        ANIMAL_TYPE VARCHAR(20) NOT NULL,
        DATETIME DATETIME NOT NULL,
        INTAKE_CONDITION VARCHAR(20) NOT NULL,
        NAME VARCHAR(50), -- Nullable TRUE이므로 NOT NULL 생략
        SEX_UPON_INTAKE VARCHAR(50) NOT NULL
    );

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
        'A562649',
        'Dog',
        '2014-03-20 18:06:00',
        'Sick',
        NULL,
        'Spayed Female'
    ),
    (
        'A412626',
        'Dog',
        '2016-03-13 11:17:00',
        'Normal',
        '*Sam',
        'Neutered Male'
    ),
    (
        'A563492',
        'Dog',
        '2014-10-24 14:45:00',
        'Normal',
        '*Sam',
        'Neutered Male'
    ),
    (
        'A513956',
        'Dog',
        '2017-06-14 11:54:00',
        'Normal',
        '*Sweetie',
        'Spayed Female'
    );

SELECT
    *
FROM
    animal_ins;