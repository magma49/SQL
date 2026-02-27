-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS ANIMAL_OUTS;

-- 2. 테이블 생성 (PK 생략, NAME만 Null 허용)
CREATE TABLE ANIMAL_OUTS (
    ANIMAL_ID VARCHAR(20) NOT NULL,
    ANIMAL_TYPE VARCHAR(20) NOT NULL,
    DATETIME DATETIME NOT NULL,
    NAME VARCHAR(50), 
    SEX_UPON_OUTCOME VARCHAR(50) NOT NULL
);

-- 3. 데이터 삽입 (가상 데이터 15건 넉넉하게 생성!)
INSERT INTO ANIMAL_OUTS (ANIMAL_ID, ANIMAL_TYPE, DATETIME, NAME, SEX_UPON_OUTCOME) VALUES
('A368930', 'Dog', '2014-06-08 13:20:00', 'Fanny', 'Spayed Female'),
('A369990', 'Dog', '2015-08-11 11:22:00', 'Happy', 'Neutered Male'),
('A370852', 'Dog', '2013-11-03 15:04:00', 'Katie', 'Spayed Female'),
('A373219', 'Cat', '2014-07-29 11:43:00', 'Ella', 'Spayed Female'),
('A374285', 'Cat', '2015-03-22 10:11:00', 'Tigger', 'Neutered Male'),
('A377750', 'Dog', '2017-10-25 17:17:00', 'Lucy', 'Spayed Female'),
('A378955', 'Dog', '2016-01-22 14:05:00', NULL, 'Intact Female'), -- 이름 없는 강아지
('A380007', 'Cat', '2015-12-15 09:30:00', 'Kitty', 'Spayed Female'),
('A381212', 'Dog', '2014-05-18 16:45:00', 'Max', 'Neutered Male'),
('A385454', 'Dog', '2017-09-02 13:10:00', 'Bella', 'Spayed Female'),
('A388888', 'Cat', '2016-11-11 11:11:00', NULL, 'Neutered Male'), -- 이름 없는 고양이
('A391234', 'Dog', '2015-04-05 15:25:00', 'Charlie', 'Intact Male'),
('A395555', 'Cat', '2014-08-08 08:08:00', 'Luna', 'Spayed Female'),
('A399552', 'Dog', '2013-10-14 15:38:00', 'Jack', 'Neutered Male'),
('A400123', 'Dog', '2016-02-28 12:30:00', 'Milo', 'Neutered Male');

-- 4. 삽입된 데이터 최종 확인
SELECT * FROM ANIMAL_OUTS;