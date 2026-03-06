-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS ITEM_INFO;

-- 2. 아이템 정보 테이블 생성 (명세서의 INTEGER 오타를 무시하고 VARCHAR로 생성!)
CREATE TABLE ITEM_INFO (
    ITEM_ID INTEGER NOT NULL,
    ITEM_NAME VARCHAR(50) NOT NULL,
    RARITY VARCHAR(20) NOT NULL,
    PRICE INTEGER NOT NULL
);

-- 3. 데이터 삽입 (총 5개의 아이템)
INSERT INTO
    ITEM_INFO (ITEM_ID, ITEM_NAME, RARITY, PRICE)
VALUES
    (0, 'ITEM_A', 'COMMON', 10000),
    (1, 'ITEM_B', 'LEGEND', 9000),
    (2, 'ITEM_C', 'LEGEND', 11000),
    (3, 'ITEM_D', 'UNIQUE', 10000),
    (4, 'ITEM_E', 'LEGEND', 12000);

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    ITEM_INFO;