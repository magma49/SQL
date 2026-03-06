-- 1. 테이블 초기화 (항상 맨 앞에 추가, 종속성을 고려해 파일 테이블 먼저 삭제)
DROP TABLE IF EXISTS USED_GOODS_FILE;

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

-- 3. 첨부파일 테이블 생성 (PK 생략, 모두 NOT NULL)
CREATE TABLE USED_GOODS_FILE (
    FILE_ID VARCHAR(10) NOT NULL,
    FILE_EXT VARCHAR(5) NOT NULL,
    FILE_NAME VARCHAR(256) NOT NULL,
    BOARD_ID VARCHAR(10) NOT NULL
);

-- 4. 데이터 삽입 (USED_GOODS_BOARD)
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
        'kwag98',
        '반려견 배변패드 팝니다',
        '정말 저렴히 판매합니다. 전부 미개봉 새상품입니다.',
        12000,
        '2022-10-01',
        'DONE',
        250
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
        'goung12',
        '배드민턴 라켓',
        '사놓고 방치만 해서 팝니다.',
        9000,
        '2022-10-02',
        'SALE',
        212
    ),
    (
        'B0004',
        'keel1990',
        '디올 귀걸이',
        '신세계강남점에서 구입. 정품 아닐시 백퍼센트 환불',
        130000,
        '2022-10-02',
        'SALE',
        199
    ),
    (
        'B0005',
        'haphli01',
        '스팸클래식 팔아요',
        '유통기한 2025년까지에요',
        10000,
        '2022-10-02',
        'SALE',
        121
    );

-- 5. 데이터 삽입 (USED_GOODS_FILE)
INSERT INTO
    USED_GOODS_FILE (FILE_ID, FILE_EXT, FILE_NAME, BOARD_ID)
VALUES
    ('IMG_000001', '.jpg', 'photo1', 'B0001'),
    ('IMG_000002', '.jpg', 'photo2', 'B0001'),
    ('IMG_000003', '.png', '사진', 'B0002'),
    ('IMG_000004', '.jpg', '사진', 'B0003'),
    ('IMG_000005', '.jpg', 'photo', 'B0004');

-- 6. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    USED_GOODS_BOARD;

SELECT
    *
FROM
    USED_GOODS_FILE;