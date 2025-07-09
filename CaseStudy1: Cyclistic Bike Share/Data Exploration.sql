-- Data Queries

SELECT rideable_type
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` 
GROUP BY rideable_type

/* Results:
rideable_type
1	electric_bike
2	classic_bike
3	electric_scooter
There are 3 unique rideable types in the dataset.*/

SELECT member_casual
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` 
GROUP BY member_casual

/*Results:
Row	member_casual
1	casual
2	member
There are 2 unique member_casual types.*/

SELECT COUNT(*) AS num_rows
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` 
WHERE ride_id IS NULL

/*Results:
There is no data to display. There are no NULL values in the ride_id column.*/

SELECT COUNT(*) AS num_duplicated_ride_ids
FROM (
  SELECT ride_id
  FROM `gdacoursework-456504.DivvyTripData.DivvyTrips`
  GROUP BY ride_id
  HAVING COUNT(*) > 1
) AS duplicates

/*Result: 
There are 211 duplicate ride_ids in the dataset. */

SELECT COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` 
WHERE member_casual IS NULL

/*Result: 
There are no NULL values in the member_casual column.*/

SELECT COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` 
WHERE rideable_type IS NULL

/*Result: 
There are no NULL values in the rideable_type column.*/

SELECT COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` 
WHERE started_at IS NULL


/*Result:
There are no NULL values in the started_at column.*/

SELECT COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` 
WHERE ended_at IS NULL

/*Result:
There are no NULL values in the ended_at column.*/

SELECT COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` 
WHERE start_station_id IS NULL

/*Result:
There are 1341897 rows with NULL start_station_id in the dataset.*/

SELECT COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` 
WHERE start_station_name IS NULL

/*Result:
There are 1341897 rows with NULL start_station_name in the dataset.*/


SELECT ride_id, start_station_id, start_station_name
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` t1
WHERE t1.start_station_name IS NULL
  AND t1.start_station_id IN (
    SELECT DISTINCT t2.start_station_id
    FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` t2
    WHERE t2.start_station_name IS NOT NULL
  );

/*Result:
There are no cases where a start_station_name is missing, but the start_station_id is known elsewhere in the dataset.*/

SELECT COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` t1
WHERE end_station_id IS NULL OR end_station_name IS NULL

/*Result:
There are 1380243 rows with NULL end_station_id or end_station_name in the dataset.*/

SELECT ride_id, end_station_id, end_station_name
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` t1
WHERE t1.end_station_name IS NULL
  AND t1.end_station_id IN (
    SELECT DISTINCT t2.end_station_id
    FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` t2
    WHERE t2.end_station_name IS NOT NULL
  );

/*Result:
There are no cases where an end_station_name is missing, but the end_station_id is known elsewhere in the dataset.*/

SELECT ride_id, start_lat, start_lng, end_lat, end_lng
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` t1
WHERE 
  start_lat IS NULL 
  OR start_lng IS NULL 

/*Result:
There are no rows with NULL start_lat or start_lng in the dataset.*/

SELECT COUNt(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips` t1
WHERE 
  end_lat IS NULL
  OR end_lng IS NULL

/*Result:
There are 7938 rows with NULL end_lat or end_lng in the dataset.*/

WITH ranked_rides AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY ride_id ORDER BY started_at DESC) AS row_num
  FROM `gdacoursework-456504.DivvyTripData.DivvyTrips`
)

SELECT COUNT(*)
FROM ranked_rides
WHERE row_num = 1

/*Result:
This query counts the number of unique ride_ids by selecting the most recent entry for each ride, ensuring that we only get the latest entry for each ride with duplicate ride_ids. There are 6917033 rows.*/

WITH ranked_rides AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY ride_id ORDER BY started_at DESC) AS row_num
  FROM `gdacoursework-456504.DivvyTripData.DivvyTrips`
)

SELECT row_num
FROM ranked_rides
GROUP BY row_num

/*Result:
The results indicate that there are only 1 duplicate row for each duplicate ride_id.*/

SELECT COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips`
WHERE start_lat NOT BETWEEN -90 AND 90
   OR start_lng NOT BETWEEN -180 AND 180;

-- There are no rows with start_lat or start_lng outside the valid range.

SELECT COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips`
WHERE end_lat NOT BETWEEN -90 AND 90
   OR end_lng NOT BETWEEN -180 AND 180;

-- There are no rows with end_lat or end_lng outside the valid range.

SELECT 
  MAX(TIMESTAMP_DIFF (ended_at, started_at, MINUTE)) as max_trip_duration_minutes,
  MIN(TIMESTAMP_DIFF (ended_at, started_at, MINUTE)) as min_trip_duration_minutes
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips`
 
/*Result:
max_trip_duration_minutes: 1574
min_trip_duration_minutes: -2748
This indicates that there are some trips with negative durations, which suggests that the ended_at timestamp is earlier than the started_at timestamp. */

SELECT 
  COUNT(TIMESTAMP_DIFF (ended_at, started_at, MINUTE)) as min_trip_duration_minutes
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips`
WHERE TIMESTAMP_DIFF (ended_at, started_at, MINUTE) <0

/*Result:
There are 58 trips with negative durations, indicating that the ended_at timestamp is earlier than the started_at timestamp.*/


/*Action Items:
1. Convert rideable_type and member_casual columns to ENUM types.
2. Remove duplicate ride_ids and assign it as the primary key.
3. Remove rows with NULL start_station_id and start_station_name.
4. Remove rows with NULL end_station_id and end_station_name.
5. Remove rows with NULL end_lat and end_lng.
6. Create a new column for ride duration by calculating the difference between started_at and ended_at.
7. Remove rows with negative trip durations.*/

