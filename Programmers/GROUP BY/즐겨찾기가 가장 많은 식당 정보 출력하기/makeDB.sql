-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS REST_INFO;

-- 2. 식당 정보 테이블 생성 (NUMBER는 INTEGER로 변환, 명세서의 NULL 조건 완벽 반영)
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

-- 3. 데이터 삽입 (하이가쯔네의 TEL 항목이 NULL인 것에 주의!)
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
        '00001',
        '은돼지식당',
        '한식',
        1150345,
        734,
        'N',
        '서울특별시 중구 다산로 149',
        '010-4484-8751'
    ),
    (
        '00002',
        '하이가쯔네',
        '일식',
        120034,
        112,
        'N',
        '서울시 중구 신당동 375-21',
        NULL
    ),
    (
        '00003',
        '따띠따띠뜨',
        '양식',
        1234023,
        102,
        'N',
        '서울시 강남구 신사동 627-3 1F',
        '02-6397-1023'
    ),
    (
        '00004',
        '스시사카우스',
        '일식',
        1522074,
        230,
        'N',
        '서울시 서울시 강남구 신사동 627-27',
        '010-9394-2554'
    ),
    (
        '00005',
        '코슌스',
        '일식',
        15301,
        123,
        'N',
        '서울특별시 강남구 언주로153길',
        '010-1315-8729'
    );

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    REST_INFO;