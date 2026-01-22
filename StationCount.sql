WITH trips AS (
--BAY WHEELS trips (2017–2019)
    SELECT
        'Baywheels'::text AS provider,
        2017::int         AS year,
        start_station_id::text AS start_station_id,
        start_time,
        end_time
    FROM public.baywheels_2017

    UNION ALL
    SELECT 'Baywheels', 2018, start_station_id::text, start_time, end_time
    FROM public.baywheels_2018

    UNION ALL
    SELECT 'Baywheels', 2019, start_station_id::text, start_time, end_time
    FROM public.baywheels_2019

--BLUE BIKES trips (2016–2019)
    UNION ALL
    SELECT
        'Bluebikes'::text AS provider,
        2016::int         AS year,
        start_station_id::text AS start_station_id,
        start_time,
        end_time
    FROM public.bluebikes_2016

    UNION ALL
    SELECT 'Bluebikes', 2017, start_station_id::text, start_time, end_time
    FROM public.bluebikes_2017

    UNION ALL
    SELECT 'Bluebikes', 2018, start_station_id::text, start_time, end_time
    FROM public.bluebikes_2018

    UNION ALL
    SELECT 'Bluebikes', 2019, start_station_id::text, start_time, end_time
    FROM public.bluebikes_2019

--CAPITAL BIKES SHARE trips (2016–2019)
    UNION ALL
    SELECT
        'Capitalbike'::text AS provider,
        2016::int         AS year,
        start_station_id::text AS start_station_id,
        start_time,
        end_time
    FROM public.capitalbikeshare_2016

    UNION ALL
    SELECT 'Capitalbike', 2017, start_station_id::text, start_time, end_time
    FROM public.capitalbikeshare_2017

    UNION ALL
    SELECT 'Capitalbike', 2018, start_station_id::text, start_time, end_time
    FROM public.capitalbikeshare_2018

    UNION ALL
    SELECT 'Capitalbike', 2019, start_station_id::text, start_time, end_time
    FROM public.capitalbikeshare_2019

-- DIVVY BIKES trips (2016–2019)
    UNION ALL
    SELECT
        'Divvybike'::text AS provider,
        2016::int         AS year,
        start_station_id::text AS start_station_id,
        start_time,
        end_time
    FROM public.divvybikes_2016

    UNION ALL
    SELECT 'Divvybike', 2017, start_station_id::text, start_time, end_time
    FROM public.divvybikes_2017

    UNION ALL
    SELECT 'Divvybike', 2018, start_station_id::text, start_time, end_time
    FROM public.divvybikes_2018

    UNION ALL
    SELECT 'Divvybike', 2019, start_station_id::text, start_time, end_time
    FROM public.divvybikes_2019

	-- SANTANDER trips (2016–2019)
    UNION ALL
    SELECT
        'Santander'::text AS provider,
        2016::int         AS year,
        startstationid::text AS start_station_id,
        start_date,
        end_date
    FROM public.santander_2016

    UNION ALL
    SELECT 'Santander', 2017, startstationid::text, start_date, end_date
    FROM public.santander_2017

    UNION ALL
    SELECT 'Santander', 2018, startstationid::text, start_date, end_date
    FROM public.santander_2018

    UNION ALL
    SELECT 'Santander', 2019, startstationid::text, start_date, end_date
    FROM public.santander_2019
),
stations AS (
    /* =========================
       BAY WHEELS stations
       ========================= */
    SELECT
        'Baywheels'::text      AS provider,
        id::text               AS station_id,
        NULLIF(TRIM(name), '') AS name,
        latitude::numeric      AS latitude,
        longitude::numeric     AS longitude,
        docks::int             AS docks
    FROM public.baywheels_stations

    /* =========================
       BLUE BIKES stations
       (note: station id is "number")
       ========================= */
    UNION ALL
    SELECT
        'Bluebikes'::text      AS provider,
        id::text           AS station_id,
        NULLIF(TRIM(name), '') AS name,
        latitude::numeric      AS latitude,
        longtitude::numeric     AS longitude,
        total_docks::int       AS docks
    FROM public.bluebikes_stations

	    /* =========================
       Capital Bikes stations
       (note: station id is "number")
       ========================= */
    UNION ALL
    SELECT
        'Capitalbike'::text    AS provider,
        id::text           AS station_id,
        NULLIF(TRIM(name), '') AS name,
        latitude::numeric      AS latitude,
        longitude::numeric    AS longitude,
        docks::int       AS docks
    FROM public.capitalbikeshare_stations


		/* =========================
       DIVVY stations
       (note: station id is "number")
       ========================= */
    UNION ALL
    SELECT
        'Divvybike'::text    AS provider,
        id::text           AS station_id,
        NULLIF(TRIM(name), '') AS name,
        latitude::numeric      AS latitude,
        longitude::numeric    AS longitude,
        docks::int       AS docks
    FROM public.divvy_stations


		/* =========================
       SANTANDER stations
       (note: station id is "number")
       ========================= */
    UNION ALL
    SELECT
        'Santander'::text    AS provider,
        id::text           AS station_id,
        NULLIF(TRIM(name), '') AS name,
        latitude::numeric      AS latitude,
        longitude::numeric    AS longitude,
        docks::int       AS docks
    FROM public.santander_stations
)
SELECT
    s.provider,
    s.name,
    s.station_id,
    s.latitude,
    s.longitude,
    /* docks is duplicated after join -> use AVG then round */
    ROUND(AVG(s.docks), 0) AS docks,
    /* avg duration (minutes) */
    ROUND(AVG(EXTRACT(EPOCH FROM (t.end_time - t.start_time)) / 60.0), 2) AS duration_minutes,
    /* usage = number of trips that start here */
    COUNT(t.start_station_id) AS start_station_count, 
	t.year
FROM stations s
LEFT JOIN trips t
       ON t.provider = s.provider
      AND t.start_station_id = s.station_id
GROUP BY s.provider, s.station_id, s.name, s.latitude, s.longitude, t.year;
