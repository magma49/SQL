CREATE TABLE
    IF NOT EXISTS FISH_INFO (
        ID INTEGER NOT NULL,
        FISH_TYPE INTEGER NOT NULL,
        LENGTH FLOAT, -- Nullable TRUE이므로 NOT NULL 생략
        TIME DATE NOT NULL
    );

INSERT INTO
    FISH_INFO (ID, FISH_TYPE, LENGTH, TIME)
VALUES
    (0, 0, 13.37, '2021-12-04'),
    (1, 0, 50.00, '2020-03-07'),
    (2, 0, 40.00, '2020-03-07'),
    (3, 1, 43.33, '2022-03-09'),
    (4, 1, NULL, '2022-04-08'),
    (5, 2, 32.00, '2020-04-28');

SELECT
    *
FROM
    fish_info;