CREATE OR REPLACE TABLE `gdacoursework-456504.DivvyTripData.DivvyTrips_Cleaned` AS
WITH ranked_rides AS (
  SELECT *,
         ROW_NUMBER() OVER (
           PARTITION BY ride_id 
           ORDER BY started_at DESC
         ) AS row_num
  FROM `gdacoursework-456504.DivvyTripData.DivvyTrips`
)

SELECT
  ride_id,
  rideable_type,
  member_casual,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  started_at,
  ended_at,
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_duration_minutes,
  EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
  EXTRACT(MONTH FROM started_at) AS month
FROM ranked_rides
WHERE
  row_num = 1                                 -- Remove duplicates
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) >= 0         -- No negative trips

/* Result:
This query creates a new table `DivvyTrips_Cleaned` with the cleaned data.
*/