DROP TABLE IF EXISTS mst_users;
CREATE TABLE mst_users (
			user_id varchar(255)
			, register_date varchar(255)
			, register_device integer);

INSERT INTO mst_users
VALUES
	('U001', '2016-08-26', 1),
	('U002', '2016-08-26', 2),
	('U003', '2016-08-27', 3);

SELECT user_id,
	register_date,
	CASE WHEN register_device = 1 THEN '데스크탑'
	WHEN register_device = 2 THEN '태블릿'
	ELSE '스마트폰' END
FROM mst_users