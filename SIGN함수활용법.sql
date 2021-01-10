DROP TABLE IF EXISTS quarterly_sales;
CREATE TABLE quarterly_sales (
    year integer
  , q1   integer
  , q2   integer
  , q3   integer
  , q4   integer
);

INSERT INTO quarterly_sales
VALUES
    (2015, 80000, 83000, 78000, 83000)
  , (2016, 85000, 85000, 80000, 81000)
  , (2017, 82000, 81000, NULL , NULL )
;

-- 분자 부분은 COALESCE를 활용해서 NULL값을 0으로 대체해 주었다
-- 분모 부분은 COALESCE를 활용해서 0으로 대체된 NULL값은 0, +값은 1이 되게 해주었다
SELECT year,
	   (COALESCE(q1, 0) + COALESCE(q2, 0) + COALESCE (q3, 0) + COALESCE(q4, 0)) / 
	   ( SIGN(COALESCE(q1, 0)) + SIGN(COALESCE(q2, 0)) + SIGN(COALESCE(q3, 0)) + SIGN(COALESCE(q4, 0)))
FROM quarterly_sales