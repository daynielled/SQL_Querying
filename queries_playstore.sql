-- Comments in SQL Start with dash-dash --
--question 1--
SELECT * FROM analytics WHERE id = 1880;

--question 2--
SELECT id, app_name FROM analytics
playstore-# WHERE last_updated = '2018-08-01';

--question 3--
SELECT category, COUNT(*) FROM analytics 
  GROUP BY category;

--question 4--
 SELECT * FROM analytics
 ORDER BY reviews DESC
 Limit 5;

--question 5--
SELECT * FROM analytics 
  WHERE rating >= 4.8 
  ORDER BY reviews DESC
  LIMIT 1;

--question 6--
SELECT category, AVG(rating) FROM analytics 
  GROUP BY category 
  ORDER BY avg DESC;

--question 7--
SELECT app_name, price, rating FROM analytics 
  WHERE rating < 3 
  ORDER BY price DESC 
  LIMIT 1;

--question 8--
SELECT * FROM analytics 
  WHERE min_installs <= 50 
    AND rating IS NOT NULL 
  ORDER BY rating DESC;

--question 9--
SELECT app_name FROM analytics
WHERE rating < 3 AND reviews >= 10000;

--question 10--
SELECT * FROM analytics
 WHERE price BETWEEN 0.1 and 1 
  ORDER BY reviews DESC 
  LIMIT 10;

--question 11--
SELECT * FROM analytics
  ORDER BY last_updated LIMIT 1;

--question 12--
SELECT * FROM analytics
  ORDER BY price DESC LIMIT 1;

--question 13--
SELECT SUM(reviews) FROM analytics;

--question 14--
SELECT category FROM analytics 
  GROUP BY category 
  HAVING COUNT(*) > 300;

--question 15--
SELECT app_name, reviews, min_installs,  min_installs / reviews AS proportion
  FROM analytics
  WHERE min_installs >= 100000
  ORDER BY proportion DESC
  LIMIT 1;


  --Further Study--
  --question 1--
  SELECT app_name, rating, category FROM analytics
  WHERE (rating, category) in (
    SELECT MAX(rating), category FROM analytics
      WHERE min_installs >= 50000
      GROUP BY category
    )
  ORDER BY category;

  --question 2--
  SELECT * FROM analytics 
  WHERE app_name ILIKE '%facebook%';

--question 3--
SELECT * FROM analytics 
  WHERE  array_length(genres, 1) = 2;

--question 4--
SELECT * FROM analytics 
  WHERE genres @> '{"Education"}';
