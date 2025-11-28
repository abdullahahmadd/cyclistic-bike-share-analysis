DROP TABLE IF EXISTS trips;

CREATE TABLE trips (
  ride_id VARCHAR(50),
  rideable_type VARCHAR(20),

  started_at VARCHAR(30),       -- import as text first
  ended_at VARCHAR(30),         -- import as text first

  day_of_week VARCHAR(20),      -- import weekday names
  start_hour TINYINT,
  start_month TINYINT,

  ride_length VARCHAR(20),      -- import as text first

  start_station_name VARCHAR(200),
  start_station_id VARCHAR(20), -- keep VARCHAR because not all IDs are numeric
  end_station_name VARCHAR(200),
  end_station_id VARCHAR(20),

  start_lat DOUBLE,
  start_lng DOUBLE,
  end_lat DOUBLE,
  end_lng DOUBLE,

  member_casual VARCHAR(20)
);

SELECT COUNT(*) AS total_rows FROM cyclistic.trips;
SELECT 
  SUM(started_at IS NULL) AS missing_started,
  SUM(ended_at IS NULL) AS missing_ended,
  SUM(ride_length IS NULL)  AS missing_length,
  SUM(member_casual IS NULL) AS missing_member_casual
FROM cyclistic.trips;
ALTER TABLE trips ADD COLUMN started_at_dt DATETIME;
ALTER TABLE trips ADD COLUMN ended_at_dt DATETIME;

UPDATE trips
SET started_at_dt = STR_TO_DATE(started_at, '%c/%e/%Y %H:%i'),
    ended_at_dt   = STR_TO_DATE(ended_at,   '%c/%e/%Y %H:%i');
ALTER TABLE trips ADD COLUMN ride_length_secs INT;
UPDATE trips
SET ride_length_secs =
    TIME_TO_SEC(STR_TO_DATE(ride_length, '%H:%i:%s'));
ALTER TABLE trips ADD COLUMN ride_length_secs INT;
UPDATE trips
SET ride_length_secs = TIME_TO_SEC(STR_TO_DATE(ride_length, '%H:%i:%s'));
SELECT 
  started_at, started_at_dt,
  ended_at, ended_at_dt,
  ride_length, ride_length_secs
FROM trips
LIMIT 10;
SELECT AVG(ride_length_secs) / 60 AS avg_ride_minutes
FROM trips;
SELECT MAX(ride_length_secs) / 60 AS max_ride_minutes
FROM trips;
UPDATE trips  
SET started_at_dt = STR_TO_DATE(started_at, '%Y-%m-%d %H:%i:%s'),
    ended_at_dt   = STR_TO_DATE(ended_at,   '%Y-%m-%d %H:%i:%s')
WHERE ride_id IS NOT NULL;
SET SQL_SAFE_UPDATES = 0;
UPDATE trips
SET started_at_dt = STR_TO_DATE(started_at, '%Y-%m-%d %H:%i:%s'),
    ended_at_dt   = STR_TO_DATE(ended_at, '%Y-%m-%d %H:%i:%s')
WHERE ride_id IS NOT NULL;
UPDATE trips
SET started_at_dt = STR_TO_DATE(started_at, '%c/%e/%Y %H:%i'),
    ended_at_dt   = STR_TO_DATE(ended_at,   '%c/%e/%Y %H:%i')
WHERE ride_id IS NOT NULL;
UPDATE trips
SET ride_length_secs = TIME_TO_SEC(STR_TO_DATE(ride_length, '%H:%i:%s'));
ALTER TABLE trips ADD COLUMN ride_length_secs INT;
UPDATE trips
SET ride_length_secs = TIME_TO_SEC(STR_TO_DATE(ride_length, '%H:%i:%s'));

SELECT ride_length, ride_length_secs
FROM trips
LIMIT 20;
SELECT 
  started_at, started_at_dt,
  ended_at, ended_at_dt,
  ride_length, ride_length_secs
FROM trips
LIMIT 10;
SELECT AVG(ride_length_secs) / 60 AS avg_ride_minutes
FROM trips;
SELECT MAX(ride_length_secs) / 60 AS max_ride_minutes
FROM trips;
SELECT day_of_week, COUNT(*) AS total
FROM trips
GROUP BY day_of_week
ORDER BY total DESC
LIMIT 1;
SELECT 
  member_casual,
  AVG(ride_length_secs) / 60 AS avg_ride_minutes
FROM trips
GROUP BY member_casual;
SELECT 
  member_casual,
  COUNT(*) AS total_rides
FROM trips
GROUP BY member_casual;
SELECT 
  day_of_week,
  member_casual,
  COUNT(*) AS total_rides
FROM trips
GROUP BY day_of_week, member_casual
ORDER BY FIELD(day_of_week,'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
SELECT 
  start_hour,
  member_casual,
  COUNT(*) AS rides
FROM trips
GROUP BY start_hour, member_casual
ORDER BY start_hour;
SELECT 
  start_month,
  member_casual,
  COUNT(*) AS rides
FROM trips
GROUP BY start_month, member_casual
ORDER BY start_month;
