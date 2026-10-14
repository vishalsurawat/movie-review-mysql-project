-- Desplay all movies.alter
USE movie_review_system;

SELECT * FROM movies ;

-- Q2 find hindi movies
SELECT * FROM movies WHERE language = "Hindi" ;

-- Q3) find movies released after 2015.
SELECT * FROM movies WHERE release_year > 2015 ;

-- Q4. Find movies longer than 150 minutes.

SELECT * FROM movies WHERE duration > 150 ;

-- Q5. Display unique genres.
SELECT distinct genre FROM movies ;


