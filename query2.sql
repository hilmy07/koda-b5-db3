SELECT title, release_date, rating, director_id, genre_id
FROM movies m
RIGHT JOIN directors d
ON m.director_id = d.id
RIGHT JOIN genres g
ON m.genre_id = g.id
GROUP BY m.title, m.release_date, m.rating, m.director_id, m.genre_id
HAVING m.director_id>=7
ORDER BY m.director_id ASC
LIMIT 50;

SELECT title, release_date, rating, director_id, genre_id
FROM movies
LIMIT 50;

