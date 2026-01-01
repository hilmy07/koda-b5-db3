SELECT * FROM directors;

ALTER TABLE directors
ADD COLUMN name VARCHAR(255);

UPDATE directors
SET name = first_name || ' ' || last_name;

-- nomor 1
SELECT
    d.name AS director_name,
    COUNT(DISTINCT m.genre_id) AS total_genre
FROM directors d
JOIN movies m ON m.director_id = d.id
GROUP BY d.name
ORDER BY total_genre DESC;

SELECT * FROM genres;

-- nomor 2

SELECT * FROM movies;

