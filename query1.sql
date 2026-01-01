CREATE TABLE "movies" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(255),
  "release_date" DATE,
  "rating" float,
  "director_id" int,
  "genre_id" int
);

CREATE TABLE "actors" (
  "id" SERIAL PRIMARY KEY,
  "first_name"  VARCHAR(255),
  "last_name"  VARCHAR(255)
);

CREATE TABLE "movies_actors" (
  "movie_id" int,
  "actor_id" int,
  "role"  VARCHAR(255)
);

CREATE TABLE "directors" (
  "id" SERIAL PRIMARY KEY,
  "first_name"  VARCHAR(255),
  "last_name"  VARCHAR(255)
);

CREATE TABLE "genres" (
  "id" SERIAL PRIMARY KEY,
  "name"  VARCHAR(255)
);

-- DROP TABLE movies;
-- DROP TABLE actors;
-- DROP TABLE movies_actors;
-- DROP TABLE directors;
-- DROP TABLE genres;

ALTER TABLE "movies_actors" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("id");

ALTER TABLE "movies_actors" ADD FOREIGN KEY ("actor_id") REFERENCES "actors" ("id");

ALTER TABLE "movies" ADD FOREIGN KEY ("director_id") REFERENCES "directors" ("id");

ALTER TABLE "movies" ADD FOREIGN KEY ("genre_id") REFERENCES "genres" ("id");

SELECT * FROM movies;

SELECT * FROM movies WHERE release_date BETWEEN '2020-01-01' AND '2020-12-30';

SELECT * FROM actors WHERE first_name="%s";

-- SELECT * FROM actors;

-- SELECT * FROM movies;

