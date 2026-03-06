-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS JULY;

DROP TABLE IF EXISTS FIRST_HALF;

-- 2. 상반기 아이스크림 주문 테이블 생성 (모두 NOT NULL)
CREATE TABLE FIRST_HALF (
    SHIPMENT_ID INTEGER NOT NULL,
    FLAVOR VARCHAR(50) NOT NULL,
    TOTAL_ORDER INTEGER NOT NULL
);

-- 3. 7월 아이스크림 주문 테이블 생성 (모두 NOT NULL)
CREATE TABLE JULY (
    SHIPMENT_ID INTEGER NOT NULL,
    FLAVOR VARCHAR(50) NOT NULL,
    TOTAL_ORDER INTEGER NOT NULL
);

-- 4. 데이터 삽입 (FIRST_HALF - 12가지 맛)
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

-- 5. 데이터 삽입 (JULY - 14건의 출하 기록)
INSERT INTO
    JULY (SHIPMENT_ID, FLAVOR, TOTAL_ORDER)
VALUES
    (101, 'chocolate', 520),
    (102, 'vanilla', 560),
    (103, 'mint_chocolate', 400),
    (104, 'caramel', 460),
    (105, 'white_chocolate', 350),
    (106, 'peach', 500),
    (107, 'watermelon', 780),
    (108, 'mango', 790),
    (109, 'strawberry', 520),
    (110, 'melon', 400),
    (111, 'orange', 250),
    (112, 'pineapple', 200),
    (208, 'mango', 110),
    (209, 'strawberry', 220);

-- 6. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    FIRST_HALF;

SELECT
    *
FROM
    JULY;