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
        'A399552',
        'Dog',
        '2013-10-14 15:38:00',
        'Normal',
        'Jack',
        'Neutered Male'
    ),
    (
        'A379998',
        'Dog',
        '2013-10-23 11:42:00',
        'Normal',
        'Disciple',
        'Intact Male'
    ),
    (
        'A370852',
        'Dog',
        '2013-11-03 15:04:00',
        'Normal',
        'Katie',
        'Spayed Female'
    ),
    (
        'A403564',
        'Dog',
        '2013-11-18 17:03:00',
        'Normal',
        'Anna',
        'Spayed Female'
    );

SELECT
    *
FROM
    animal_ins;