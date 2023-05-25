--Q1

SELECT COUNT (*)
FROM data_analyst_jobs;

--Q2 XTO Land Data Analyst

SELECT *
FROM data_analyst_jobs
LIMIT 10;

--Q3 TN-21, KY-6

SELECT COUNT(location), location
FROM data_analyst_jobs
WHERE location = 'KY' OR location = 'TN'
GROUP BY location;

--Q4 3

SELECT COUNT(location)
FROM data_analyst_jobs
WHERE star_rating > 4 AND location = 'TN';

--Q5 151

SELECT COUNT(review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

--Q6 Nebraska 

SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL AND location <> 'USA' AND location <> 'DC' AND location <> 'REMOTE'
GROUP BY location
ORDER BY avg_rating DESC;

--Q7 881

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;

--Q8 230

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location ='CA';

--Q9 41

SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg DESC;

--Q10 1-6 have the same rating with 4.2

SELECT company, ROUND(AVG(star_rating),2) AS avg_star_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg_star_rating DESC;

--Q11 1669

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title ILIKE '%analyst%';

--Q12 4

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title NOT ILIKE '%analyst%' AND title NOT ILIKE '%analytics%';

--BONUS--

SELECT COUNT(title), domain
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%' AND days_since_posting > 21 AND domain IS NOT NULL
GROUP BY domain
ORDER BY count DESC
LIMIT 4;


