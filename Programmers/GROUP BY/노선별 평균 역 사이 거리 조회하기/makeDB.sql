-- 1. 테이블 초기화 (항상 맨 앞에 추가)
DROP TABLE IF EXISTS SUBWAY_DISTANCE;

-- 2. 테이블 생성 (명세서에 PK 언급 없으므로 생략)
CREATE TABLE SUBWAY_DISTANCE (
    LINE VARCHAR(10) NOT NULL,
    NO INT NOT NULL,
    ROUTE VARCHAR(50) NOT NULL,
    STATION_NAME VARCHAR(100) NOT NULL,
    D_BETWEEN_DIST FLOAT NOT NULL,
    D_CUMULATIVE FLOAT NOT NULL
);

-- 3. 데이터 삽입
INSERT INTO SUBWAY_DISTANCE (LINE, NO, ROUTE, STATION_NAME, D_BETWEEN_DIST, D_CUMULATIVE) VALUES
('2호선', 45, '성수지선', '용답', 2.3, 51.1),
('2호선', 46, '성수지선', '신답', 1, 52.1),
('2호선', 47, '성수지선', '용두(동대문구청)', 0.9, 53),
('2호선', 48, '성수지선', '신설동', 1.2, 54.2),
('2호선', 49, '신정지선', '도림천', 1, 55.2),
('2호선', 50, '신정지선', '양천구청', 1.7, 56.9),
('2호선', 51, '신정지선', '신정네거리', 1.9, 58.8),
('2호선', 52, '신정지선', '까치산', 1.4, 60.2);

-- 4. 삽입된 데이터 최종 확인
SELECT * FROM SUBWAY_DISTANCE;