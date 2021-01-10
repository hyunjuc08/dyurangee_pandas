DROP TABLE IF EXISTS user_location;
CREATE TABLE user_location (
    user_id   varchar(255)
  , region_name varchar(255)
  , county_name varchar(255)
);

INSERT INTO user_location
VALUES
    ('U001', '서울특별시', '강서구')
  , ('U002', '경기도', '수원시'  )
  , ('U003', '제주특별자치도', '서귀포시')
;

SELECT CONCAT(region_name, ' ', county_name)
FROM user_location