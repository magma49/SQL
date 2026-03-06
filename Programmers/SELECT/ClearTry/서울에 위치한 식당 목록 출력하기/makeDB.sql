-- 1. 테이블 초기화 (항상 맨 앞에 추가, 종속성을 고려해 리뷰 테이블부터 삭제)
DROP TABLE IF EXISTS REST_REVIEW;

DROP TABLE IF EXISTS REST_INFO;

-- 2. 식당 정보 테이블 생성
CREATE TABLE REST_INFO (
    REST_ID VARCHAR(5) NOT NULL,
    REST_NAME VARCHAR(50) NOT NULL,
    FOOD_TYPE VARCHAR(20),
    VIEWS INTEGER,
    FAVORITES INTEGER,
    PARKING_LOT VARCHAR(1),
    ADDRESS VARCHAR(100),
    TEL VARCHAR(100)
);

-- 3. 식당 리뷰 테이블 생성
CREATE TABLE REST_REVIEW (
    REVIEW_ID VARCHAR(10) NOT NULL,
    REST_ID VARCHAR(10),
    MEMBER_ID VARCHAR(100),
    REVIEW_SCORE INTEGER,
    REVIEW_TEXT VARCHAR(1000),
    REVIEW_DATE DATE
);

-- 4. 데이터 삽입 (REST_INFO - 3개 식당)
INSERT INTO
    REST_INFO (
        REST_ID,
        REST_NAME,
        FOOD_TYPE,
        VIEWS,
        FAVORITES,
        PARKING_LOT,
        ADDRESS,
        TEL
    )
VALUES
    (
        '00028',
        '대우부대찌개',
        '한식',
        52310,
        10,
        'N',
        '경기도 용인시 처인구 남사읍 처인성로 309',
        '031-235-1235'
    ),
    (
        '00039',
        '광주식당',
        '한식',
        23001,
        20,
        'N',
        '경기도 부천시 산업로8번길 60',
        '031-235-6423'
    ),
    (
        '00035',
        '삼촌식당',
        '일식',
        532123,
        80,
        'N',
        '서울특별시 강서구 가로공원로76가길',
        '02-135-1266'
    );

-- 5. 데이터 삽입 (REST_REVIEW - 5개 리뷰)
INSERT INTO
    REST_REVIEW (
        REVIEW_ID,
        REST_ID,
        MEMBER_ID,
        REVIEW_SCORE,
        REVIEW_TEXT,
        REVIEW_DATE
    )
VALUES
    (
        'R000000065',
        '00028',
        'soobin97@naver.com',
        5,
        '부찌 국물에서 샤브샤브 맛이나고 깔끔',
        '2022-04-12'
    ),
    (
        'R000000066',
        '00039',
        'yelin1130@gmail.com',
        5,
        '김치찌개 최곱니다.',
        '2022-02-12'
    ),
    (
        'R000000067',
        '00028',
        'yelin1130@gmail.com',
        5,
        '햄이 많아서 좋아요',
        '2022-02-22'
    ),
    (
        'R000000068',
        '00035',
        'ksyi0316@gmail.com',
        5,
        '숙성회가 끝내줍니다.',
        '2022-02-15'
    ),
    (
        'R000000069',
        '00035',
        'yoonsy95@naver.com',
        4,
        '비린내가 전혀없어요.',
        '2022-04-16'
    );

-- 6. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    REST_INFO;

SELECT
    *
FROM
    REST_REVIEW;