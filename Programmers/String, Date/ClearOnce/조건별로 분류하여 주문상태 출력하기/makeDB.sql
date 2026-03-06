-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS FOOD_ORDER;

-- 2. 식품공장 주문정보 테이블 생성 (PK 생략, 날짜 3개 컬럼만 Null 허용)
CREATE TABLE FOOD_ORDER (
    ORDER_ID VARCHAR(10) NOT NULL,
    PRODUCT_ID VARCHAR(5) NOT NULL,
    AMOUNT INTEGER NOT NULL,
    PRODUCE_DATE DATE,
    IN_DATE DATE,
    OUT_DATE DATE,
    FACTORY_ID VARCHAR(10) NOT NULL,
    WAREHOUSE_ID VARCHAR(10) NOT NULL
);

-- 3. 데이터 삽입 (총 5건의 주문 정보)
INSERT INTO
    FOOD_ORDER (
        ORDER_ID,
        PRODUCT_ID,
        AMOUNT,
        PRODUCE_DATE,
        IN_DATE,
        OUT_DATE,
        FACTORY_ID,
        WAREHOUSE_ID
    )
VALUES
    (
        'OD00000051',
        'P0002',
        4000,
        '2022-04-01',
        '2022-04-21',
        '2022-04-21',
        'FT19970003',
        'WH0005'
    ),
    (
        'OD00000052',
        'P0003',
        2500,
        '2022-04-10',
        '2022-04-27',
        '2022-04-27',
        'FT19970003',
        'WH0006'
    ),
    (
        'OD00000053',
        'P0005',
        6200,
        '2022-04-15',
        '2022-04-30',
        '2022-05-01',
        'FT19940003',
        'WH0003'
    ),
    (
        'OD00000054',
        'P0006',
        1000,
        '2022-04-21',
        '2022-04-30',
        NULL,
        'FT19940003',
        'WH0009'
    ),
    (
        'OD00000055',
        'P0008',
        1500,
        '2022-04-25',
        '2022-05-11',
        '2022-05-11',
        'FT19980003',
        'WH0009'
    );

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    FOOD_ORDER;