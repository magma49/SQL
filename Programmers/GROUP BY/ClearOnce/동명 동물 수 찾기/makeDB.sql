-- 1. 테이블 초기화
DROP TABLE IF EXISTS ANIMAL_INS;

-- 2. 테이블 생성 (PK 생략, NAME만 Null 허용)
CREATE TABLE ANIMAL_INS (
    ANIMAL_ID VARCHAR(20) NOT NULL,
    ANIMAL_TYPE VARCHAR(20) NOT NULL,
    DATETIME DATETIME NOT NULL,
    INTAKE_CONDITION VARCHAR(20) NOT NULL,
    NAME VARCHAR(50), 
    SEX_UPON_INTAKE VARCHAR(50) NOT NULL
);

-- 3. 데이터 삽입
INSERT INTO ANIMAL_INS (ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE) VALUES
('A396810', 'Dog', '2016-08-22 16:13:00', 'Injured', 'Raven', 'Spayed Female'),
('A377750', 'Dog', '2017-10-25 17:17:00', 'Normal', 'Lucy', 'Spayed Female'),
('A355688', 'Dog', '2014-01-26 13:48:00', 'Normal', 'Shadow', 'Neutered Male'),
('A399421', 'Dog', '2015-08-25 14:08:00', 'Normal', 'Lucy', 'Spayed Female'),
('A400680', 'Dog', '2017-06-17 13:29:00', 'Normal', 'Lucy', 'Spayed Female'),
('A410668', 'Cat', '2015-11-19 13:41:00', 'Normal', 'Raven', 'Spayed Female');

-- 4. 삽입된 데이터 최종 확인
SELECT * FROM ANIMAL_INS;