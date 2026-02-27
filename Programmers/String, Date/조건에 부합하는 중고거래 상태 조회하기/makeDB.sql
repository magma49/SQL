-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS USED_GOODS_BOARD;

-- 2. 중고거래 게시판 테이블 생성 (PK 생략, 모두 NOT NULL)
CREATE TABLE USED_GOODS_BOARD (
    BOARD_ID VARCHAR(5) NOT NULL,
    WRITER_ID VARCHAR(50) NOT NULL,
    TITLE VARCHAR(100) NOT NULL,
    CONTENTS VARCHAR(1000) NOT NULL,
    PRICE INTEGER NOT NULL,
    CREATED_DATE DATE NOT NULL,
    STATUS VARCHAR(10) NOT NULL,
    VIEWS INTEGER NOT NULL
);

-- 3. 데이터 삽입
INSERT INTO
    USED_GOODS_BOARD (
        BOARD_ID,
        WRITER_ID,
        TITLE,
        CONTENTS,
        PRICE,
        CREATED_DATE,
        STATUS,
        VIEWS
    )
VALUES
    (
        'B0007',
        's2s2123',
        '커피그라인더',
        '새상품처럼 깨끗합니다.',
        7000,
        '2022-10-04',
        'DONE',
        210
    ),
    (
        'B0008',
        'hong02',
        '자전거 판매합니다',
        '출퇴근용으로 구매했다가 사용하지 않아서 내놔요',
        40000,
        '2022-10-04',
        'SALE',
        301
    ),
    (
        'B0009',
        'yawoong67',
        '선반 팝니다',
        '6단 선반. 환불 반품 안됩니다.',
        12000,
        '2022-10-05',
        'DONE',
        202
    ),
    (
        'B0010',
        'keel1990',
        '철제선반5단',
        '철제선반 5단 조립식 팜',
        10000,
        '2022-10-05',
        'SALE',
        194
    );

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    USED_GOODS_BOARD;