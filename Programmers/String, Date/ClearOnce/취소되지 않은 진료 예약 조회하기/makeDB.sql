-- 1. 테이블 초기화 (항상 맨 앞에 추가, 종속성을 고려해 예약 테이블부터 삭제)
DROP TABLE IF EXISTS APPOINTMENT;

DROP TABLE IF EXISTS DOCTOR;

DROP TABLE IF EXISTS PATIENT;

-- 2. 환자 정보 테이블 생성
CREATE TABLE PATIENT (
    PT_NO VARCHAR(20) NOT NULL,
    PT_NAME VARCHAR(50) NOT NULL,
    GEND_CD VARCHAR(10) NOT NULL,
    AGE INTEGER NOT NULL,
    TLNO VARCHAR(20) -- 명세서에 따라 Null 허용
);

-- 3. 의사 정보 테이블 생성
CREATE TABLE DOCTOR (
    DR_NAME VARCHAR(50) NOT NULL,
    DR_ID VARCHAR(20) NOT NULL,
    LCNS_NO VARCHAR(20) NOT NULL,
    HIRE_YMD DATE NOT NULL,
    MCDP_CD VARCHAR(10),
    -- 명세서에 따라 Null 허용
    TLNO VARCHAR(20) -- 명세서에 따라 Null 허용
);

-- 4. 진료 예약 테이블 생성
CREATE TABLE APPOINTMENT (
    APNT_YMD DATETIME NOT NULL,
    APNT_NO INTEGER NOT NULL,
    PT_NO VARCHAR(20) NOT NULL,
    MCDP_CD VARCHAR(10) NOT NULL,
    MDDR_ID VARCHAR(20) NOT NULL,
    APNT_CNCL_YN VARCHAR(5),
    -- 명세서에 따라 Null 허용
    APNT_CNCL_YMD DATE -- 명세서에 따라 Null 허용
);

-- 5. 데이터 삽입 (PATIENT - 5명)
INSERT INTO
    PATIENT (PT_NO, PT_NAME, GEND_CD, AGE, TLNO)
VALUES
    ('PT22000019', '바라', 'W', 10, '01079068799'),
    ('PT22000043', '오스왈드', 'M', 68, '01031294124'),
    ('PT22000052', '제니', 'W', 60, NULL),
    ('PT22000071', '몬몬', 'M', 31, '01076489209'),
    ('PT22000097', '슈가', 'M', 19, NULL);

-- 6. 데이터 삽입 (DOCTOR - 5명)
INSERT INTO
    DOCTOR (DR_NAME, DR_ID, LCNS_NO, HIRE_YMD, MCDP_CD, TLNO)
VALUES
    (
        '루피',
        'DR20090029',
        'LC00010001',
        '2009-03-01',
        'CS',
        '01085482011'
    ),
    (
        '니모',
        'DR20200012',
        'LC00911162',
        '2020-03-01',
        'CS',
        '01089483921'
    ),
    (
        '핑크퐁',
        'DR20140011',
        'LC00082201',
        '2014-03-01',
        'NP',
        '01098428957'
    ),
    (
        '젤라비',
        'DR20160031',
        'LC00340327',
        '2016-11-01',
        'OB',
        '01023981922'
    ),
    (
        '토리',
        'DR20190129',
        'LC00099911',
        '2019-03-01',
        'NS',
        '01058390758'
    );

-- 7. 데이터 삽입 (APPOINTMENT - 5건)
INSERT INTO
    APPOINTMENT (
        APNT_YMD,
        APNT_NO,
        PT_NO,
        MCDP_CD,
        MDDR_ID,
        APNT_CNCL_YN,
        APNT_CNCL_YMD
    )
VALUES
    (
        '2022-04-13 12:30:00',
        42,
        'PT22000071',
        'CS',
        'DR20090029',
        'N',
        NULL
    ),
    (
        '2022-04-13 15:30:00',
        43,
        'PT22000019',
        'CS',
        'DR20200012',
        'N',
        NULL
    ),
    (
        '2022-04-13 09:00:00',
        46,
        'PT22000043',
        'CS',
        'DR20090029',
        'N',
        NULL
    ),
    (
        '2022-07-09 11:00:00',
        74,
        'PT22000042',
        'NP',
        'DR20100011',
        'N',
        NULL
    ),
    (
        '2022-12-13 12:30:00',
        110,
        'PT22000097',
        'NP',
        'DR20160011',
        'Y',
        '2022-12-03'
    );

-- 8. 삽입된 데이터 최종 확인
SELECT
    *
FROM
    PATIENT;

SELECT
    *
FROM
    DOCTOR;

SELECT
    *
FROM
    APPOINTMENT;