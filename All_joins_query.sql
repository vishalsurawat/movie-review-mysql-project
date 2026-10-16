USE movie_review_system ;

-- Q1) Display users and their movies.

SELECT w.watchlist_id,u.user_name,m.title
FROM 
watchlist w
INNER JOIN 
users u 
ON u.user_id = w.user_id

INNER JOIN 
movies m
ON m.movie_id = w.movie_id
;

-- Q2) Display all movies those not on a watchlist. 
SELECT m.movie_id, m.title, w.watchlist_id
FROM movies m
LEFT JOIN
watchlist w 
ON m.movie_id = w.movie_id
;

-- Q3) Display reviews with movie and reviewer name. 
SELECT u.user_name,m.title,r.review_id,r.review_text
FROM 
reviews r
INNER JOIN 
watchlist w
ON r.watchlist_id = w.watchlist_id

INNER JOIN 
movies m
ON m.movie_id = w.movie_id 

INNER JOIN 
users u
ON u.user_id = w. user_id 
;

-- Q4) Display pending movies for each user. 

SELECT u.user_name, m.title
FROM 
watchlist w 
INNER JOIN 
movies m 
ON w.movie_id = m.movie_id
INNER JOIN 
users u 
ON w.user_id = u.user_id

WHERE w.status = "pending" ;                                                                      






