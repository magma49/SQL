CREATE TABLE
    IF NOT EXISTS CAR_RENTAL_COMPANY_CAR (
        CAR_ID INTEGER NOT NULL,
        CAR_TYPE VARCHAR(255) NOT NULL,
        DAILY_FEE INTEGER NOT NULL,
        OPTIONS VARCHAR(255) NOT NULL
    );

INSERT INTO
    CAR_RENTAL_COMPANY_CAR
VALUES
    (1, '세단', 16000, '가죽시트,열선시트,후방카메라'),
    (2, 'SUV', 14000, '스마트키,네비게이션,열선시트'),
    (3, 'SUV', 22000, '주차감지센서,후방카메라,가죽시트');

SELECT
    *
FROM
    car_rental_company_car;