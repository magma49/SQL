DROP TABLE IF EXISTS COMPANY_ORG;

CREATE TABLE COMPANY_ORG (
    EMP_ID INTEGER NOT NULL PRIMARY KEY,
    EMP_NAME VARCHAR(50) NOT NULL,
    MANAGER_ID INTEGER
);

-- 데이터 삽입 (사장에서 대리까지 꼬리를 무는 구조)
INSERT INTO
    COMPANY_ORG
VALUES
    (1, '사장(CEO)', NULL),
    -- 1계층 (매니저 없음)
    (2, '김상무', 1),
    -- 2계층 (사장 직속)
    (3, '박전무', 1),
    -- 2계층 (사장 직속)
    (4, '이부장', 2),
    -- 3계층 (김상무 직속)
    (5, '최과장', 4),
    -- 4계층 (이부장 직속)
    (6, '정대리', 5),
    -- 5계층 (최과장 직속)
    (7, '강부장', 3),
    -- 3계층 (박전무 직속)
    (8, '윤과장', 7);

-- 4계층 (강부장 직속)