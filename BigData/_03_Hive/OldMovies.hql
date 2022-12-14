-- Create a table in hive

DROP TABLE movies;
CREATE EXTERNAL TABLE movies (movie_id INT, title STRING, release DATE) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LOCATION '/user/maria_dev/movies/';
INSERT OVERWRITE DIRECTORY '${OUTPUT}' SELECT * FROM movies WHERE release < '1940-01-01' ORDER BY release;
