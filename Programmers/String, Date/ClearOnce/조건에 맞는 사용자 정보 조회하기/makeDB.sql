-- 1. 테이블 초기화 (항상 맨 앞에 추가, 종속성을 고려해 게시판 테이블 먼저 삭제)
DROP TABLE IF EXISTS USED_GOODS_BOARD;

DROP TABLE IF EXISTS USED_GOODS_USER;

-- 2. 중고거래 회원 정보 테이블 생성 (PK 생략, STREET_ADDRESS2만 Null 허용)
CREATE TABLE USED_GOODS_USER (
    USER_ID VARCHAR(50) NOT NULL,
    NICKNAME VARCHAR(100) NOT NULL,
    -- 오타 수정
    CITY VARCHAR(100) NOT NULL,
    STREET_ADDRESS1 VARCHAR(100) NOT NULL,
    STREET_ADDRESS2 VARCHAR(100),
    TLNO VARCHAR(20) NOT NULL
);

-- 3. 중고거래 게시판 테이블 생성 (PK 생략, 모두 NOT NULL)
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

-- 4. 데이터 삽입 (USED_GOODS_USER)
INSERT INTO
    USED_GOODS_USER (
        USER_ID,
        NICKNAME,
        CITY,
        STREET_ADDRESS1,
        STREET_ADDRESS2,
        TLNO
    )
VALUES
    (
        'dhfkzmf09',
        '찐찐',
        '성남시',
        '분당구 수내로 13',
        'A동 1107호',
        '01053422914'
    ),
    (
        'dlPcks90',
        '썹썹',
        '성남시',
        '분당구 수내로 74',
        '401호',
        '01034573944'
    ),
    (
        'cjfwls91',
        '점심만금식',
        '성남시',
        '분당구 내정로 185',
        '501호',
        '01036344964'
    ),
    (
        'dlfghks94',
        '희망',
        '성남시',
        '분당구 내정로 101',
        '203동 102호',
        '01032634154'
    ),
    (
        'rkdhs95',
        '용기',
        '성남시',
        '분당구 수내로 23',
        '501호',
        '01074564564'
    );

-- 5. 데이터 삽입 (USED_GOODS_BOARD)
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
        'B0001',
        'dhfkzmf09',
        '칼라거펠트 코트',
        '양모 70%이상 코트입니다.',
        120000,
        '2022-10-14',
        'DONE',
        104
    ),
    (
        'B0002',
        'lee871201',
        '국내산 볶음참깨',
        '직접 농사지은 참깨입니다.',
        3000,
        '2022-10-02',
        'DONE',
        121
    ),
    (
        'B0003',
        'dhfkzmf09',
        '나이키 숏패딩',
        '사이즈는 M입니다.',
        40000,
        '2022-10-17',
        'DONE',
        98
    ),
    (
        'B0004',
        'kwag98',
        '반려견 배변패드 팝니다',
        '정말 저렴히 판매합니다. 전부 미개봉 새상품입니다.',
        12000,
        '2022-10-01',
        'DONE',
        250
    ),
    (
        'B0005',
        'dhfkzmf09',
        'PS4',
        'PS5 구매로인해 팝니다.',
        250000,
        '2022-11-03',
        'DONE',
        111
    );

-- 6. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    USED_GOODS_USER;

SELECT
    *
FROM
    USED_GOODS_BOARD;