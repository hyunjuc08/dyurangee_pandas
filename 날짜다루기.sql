SELECT *,
	   EXTRACT(YEAR FROM dt) tt_year,
	   EXTRACT(MONTH FROM dt) tt_month,
	   EXTRACT(DAY FROM stamp) tt_day,
	   EXTRACT(HOUR FROM stamp) tt_hour
FROM (SELECT
	  CAST('2018-06-11' AS date) AS dt,
	  CAST('2018-06-11 21:00:00' AS timestamp) AS stamp) AS tt