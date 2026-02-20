-- 1. 부모 테이블 생성 (FIRST_HALF)
CREATE TABLE
    IF NOT EXISTS FIRST_HALF (
        SHIPMENT_ID INT NOT NULL,
        FLAVOR VARCHAR(50) NOT NULL PRIMARY KEY, -- 기본 키 지정
        TOTAL_ORDER INT NOT NULL
    );

-- 2. 자식 테이블 생성 (ICECREAM_INFO)
CREATE TABLE
    IF NOT EXISTS ICECREAM_INFO (
        FLAVOR VARCHAR(50) NOT NULL PRIMARY KEY, -- 기본 키 지정
        INGREDIENT_TYPE VARCHAR(50) NOT NULL,
        FOREIGN KEY (FLAVOR) REFERENCES FIRST_HALF (FLAVOR) -- 외래 키 연결
    );

-- 1. FIRST_HALF 데이터 삽입
INSERT INTO
    FIRST_HALF (SHIPMENT_ID, FLAVOR, TOTAL_ORDER)
VALUES
    (101, 'chocolate', 3200),
    (102, 'vanilla', 2800),
    (103, 'mint_chocolate', 1700),
    (104, 'caramel', 2600),
    (105, 'white_chocolate', 3100),
    (106, 'peach', 2450),
    (107, 'watermelon', 2150),
    (108, 'mango', 2900),
    (109, 'strawberry', 3100),
    (110, 'melon', 3150),
    (111, 'orange', 2900),
    (112, 'pineapple', 2900);

-- 2. ICECREAM_INFO 데이터 삽입
INSERT INTO
    ICECREAM_INFO (FLAVOR, INGREDIENT_TYPE)
VALUES
    ('chocolate', 'sugar_based'),
    ('vanilla', 'sugar_based'),
    ('mint_chocolate', 'sugar_based'),
    ('caramel', 'sugar_based'),
    ('white_chocolate', 'sugar_based'),
    ('peach', 'fruit_based'),
    ('watermelon', 'fruit_based'),
    ('mango', 'fruit_based'),
    ('strawberry', 'fruit_based'),
    ('melon', 'fruit_based'),
    ('orange', 'fruit_based'),
    ('pineapple', 'fruit_based');

SELECT
    *
FROM
    first_half;

SELECT
    *
FROM
    icecream_info;