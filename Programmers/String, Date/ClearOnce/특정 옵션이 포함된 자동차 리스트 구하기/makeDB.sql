-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS CAR_RENTAL_COMPANY_CAR;

-- 2. 자동차 정보 테이블 생성 (PK 생략, 모두 NOT NULL)
CREATE TABLE CAR_RENTAL_COMPANY_CAR (
    CAR_ID INTEGER NOT NULL,
    CAR_TYPE VARCHAR(255) NOT NULL,
    DAILY_FEE INTEGER NOT NULL,
    OPTIONS VARCHAR(255) NOT NULL
);

-- 3. 데이터 삽입
INSERT INTO
    CAR_RENTAL_COMPANY_CAR (CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS)
VALUES
    (1, '세단', 16000, '가죽시트,열선시트,후방카메라'),
    (2, 'SUV', 14000, '스마트키,네비게이션,열선시트'),
    (3, 'SUV', 22000, '주차감지센서,후방카메라,네비게이션');

-- 4. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    CAR_RENTAL_COMPANY_CAR;