WITH bay_2017 as(
SELECT
	'baywheels' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2017 :: INT as year
FROM baywheels_stations s
	JOIN baywheels_2017 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

bay_2018 as(
SELECT
	'baywheels' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2018 :: INT as year
FROM baywheels_stations s
	JOIN baywheels_2018 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

bay_2019 as(
SELECT
	'baywheels' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2019 :: INT as year
FROM baywheels_stations s
	JOIN baywheels_2019 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

blue_2016 as(
SELECT
	'bluebikes' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longtitude as longitude,
	Round(avg(s.total_docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2016 :: INT as year
FROM bluebikes_stations s
	JOIN bluebikes_2016 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longtitude, s.latitude
),

blue_2017 as(
SELECT
	'bluebikes' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longtitude as longitude,
	Round(avg(s.total_docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2017 :: INT as year
FROM bluebikes_stations s
	JOIN bluebikes_2017 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longtitude, s.latitude
),

blue_2018 as(
SELECT
	'bluebikes' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longtitude as longitude,
	Round(avg(s.total_docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2018 :: INT as year
FROM bluebikes_stations s
	JOIN bluebikes_2018 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longtitude, s.latitude
),

blue_2019 as(
SELECT
	'bluebikes' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longtitude,
	Round(avg(s.total_docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2019 :: INT as year
FROM bluebikes_stations s
	JOIN bluebikes_2019 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longtitude, s.latitude
),

capital_2016 as(
SELECT
	'capitalbikeshare' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2016 :: INT as year
FROM capitalbikeshare_stations s
	JOIN capitalbikeshare_2016 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

capital_2017 as(
SELECT
	'capitalbikeshare' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2017 :: INT as year
FROM capitalbikeshare_stations s
	JOIN capitalbikeshare_2017 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

capital_2018 as(
SELECT
	'capitalbikeshare' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2018 :: INT as year
FROM capitalbikeshare_stations s
	JOIN capitalbikeshare_2018 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

capital_2019 as(
SELECT
	'capitalbikeshare' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2019 :: INT as year
FROM capitalbikeshare_stations s
	JOIN capitalbikeshare_2019 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

div_2016 as(
SELECT
	'divvy' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2016 :: INT as year
FROM divvy_stations s
	JOIN divvybikes_2016 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

div_2017 as(
SELECT
	'divvy' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2017 :: INT as year
FROM divvy_stations s
	JOIN divvybikes_2017 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

div_2018 as(
SELECT
	'divvy' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2018 :: INT as year
FROM divvy_stations s
	JOIN divvybikes_2018 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

div_2019 as(
SELECT
	'divvy' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_time - b.start_time)/ 60.0), 2) AS duration_minutes,
	COUNT(b.start_station_id) as start_station_count,
	2019 :: INT as year
FROM divvy_stations s
	JOIN divvybikes_2019 b ON s.id = b.start_station_id
GROUP BY station_id, s.name, s.longitude, s.latitude
),

san_2016 as(
SELECT
	'santander' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_date - b.start_date)/ 60.0), 2) AS duration_minutes,
	COUNT(b.startstationid) as start_station_count,
	2016 :: INT as year
FROM santander_stations s
	JOIN santander_2016 b ON s.id = b.startstationid
GROUP BY station_id, s.name, s.longitude, s.latitude
),

san_2017 as(
SELECT
	'santander' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_date - b.start_date)/ 60.0), 2) AS duration_minutes,
	COUNT(b.startstationid) as start_station_count,
	2017 :: INT as year
FROM santander_stations s
	JOIN santander_2017 b ON s.id = b.startstationid
GROUP BY station_id, s.name, s.longitude, s.latitude
),

san_2018 as(
SELECT
	'santander' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_date - b.start_date)/ 60.0), 2) AS duration_minutes,
	COUNT(b.startstationid) as start_station_count,
	2018 :: INT as year
FROM santander_stations s
	JOIN santander_2018 b ON s.id = b.startstationid
GROUP BY station_id, s.name, s.longitude, s.latitude
),

san_2019 as(
SELECT
	'santander' :: TEXT AS provider,
	s.name,
	s.id as station_id,
	s.latitude,
	s.longitude,
	Round(avg(s.docks),0) as docks,
	ROUND(AVG(EXTRACT(EPOCH FROM b.end_date - b.start_date)/ 60.0), 2) AS duration_minutes,
	COUNT(b.startstationid) as start_station_count,
	2019 :: INT as year
FROM santander_stations s
	JOIN santander_2019 b ON s.id = b.startstationid
GROUP BY station_id, s.name, s.longitude, s.latitude
)

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM bay_2017 s
JOIN baywheels_2017 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM bay_2018 s
JOIN baywheels_2018 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM bay_2019 s
JOIN baywheels_2019 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM blue_2016 s
JOIN bluebikes_2016 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM blue_2017 s
JOIN bluebikes_2017 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM blue_2018 s
JOIN bluebikes_2018 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM blue_2019 s
JOIN bluebikes_2019 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longtitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM capital_2016 s
JOIN capitalbikeshare_2016 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM capital_2017 s
JOIN capitalbikeshare_2017 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM capital_2018 s
JOIN capitalbikeshare_2018 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM capital_2019 s
JOIN capitalbikeshare_2019 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM div_2016 s
JOIN divvybikes_2016 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM div_2017 s
JOIN divvybikes_2017 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM div_2018 s
JOIN divvybikes_2018 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.end_station_id) as end_count
FROM div_2019 s
JOIN divvybikes_2019 b ON s.station_id=b.end_station_id
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.endstationid) as end_count
FROM san_2016 s
JOIN santander_2016 b ON s.station_id=b.endstationid
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.endstationid) as end_count
FROM san_2017 s
JOIN santander_2017 b ON s.station_id=b.endstationid
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.endstationid) as end_count
FROM san_2018 s
JOIN santander_2018 b ON s.station_id=b.endstationid
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year

UNION ALL

SELECT 
	s.*,
	COUNT(b.endstationid) as end_count
FROM san_2019 s
JOIN santander_2019 b ON s.station_id=b.endstationid
GROUP BY s.provider, s.name, s.station_id, s.latitude, s.longitude, s.docks, s.duration_minutes, s.start_station_count, s.year