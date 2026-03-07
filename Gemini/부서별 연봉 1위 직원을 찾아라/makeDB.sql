DROP TABLE IF EXISTS EMPLOYEES;

CREATE TABLE EMPLOYEES (
    EMP_ID VARCHAR(10) NOT NULL PRIMARY KEY,
    EMP_NAME VARCHAR(50) NOT NULL,
    DEPT_CODE VARCHAR(10) NOT NULL,
    SALARY INTEGER NOT NULL
);

INSERT INTO
    EMPLOYEES (EMP_ID, EMP_NAME, DEPT_CODE, SALARY)
VALUES
    ('E01', '김철수', 'D01', 5000),
    ('E02', '이영희', 'D01', 7500),
    -- D01 부서 1위
    ('E03', '박민수', 'D01', 6000),
    ('E04', '정지원', 'D02', 4500),
    ('E05', '최동훈', 'D02', 8000),
    -- D02 부서 1위
    ('E06', '강지영', 'D02', 6500),
    ('E07', '윤호진', 'D03', 5500);

-- D03 부서 1위 (혼자 있음)