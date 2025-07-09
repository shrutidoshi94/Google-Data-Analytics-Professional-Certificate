SELECT 'member', ROUND(AVG(ride_duration_minutes), 2)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips_Cleaned` AS t1
WHERE member_casual = 'member'
UNION ALL
SELECT 'casual', ROUND(AVG(ride_duration_minutes), 2)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips_Cleaned` AS t1
WHERE member_casual = 'casual'

/*Result:
This query calculates the average ride duration for members and casual riders. The results show that members have a smaller average ride duration compared to casual riders, indicating that members tend to take shorter trips on average.
Members ride for an average of 11.86 minutes, while casual riders ride for an average of 23.27 minutes. This suggests that casual riders may be more likely to take longer trips, possibly for leisure or exploration purposes, while members may use the service more frequently for shorter commutes or errands.
*/

SELECT 'member', COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips_Cleaned` AS t1
WHERE member_casual = 'member'
UNION ALL
SELECT 'casual', COUNT(*)
FROM `gdacoursework-456504.DivvyTripData.DivvyTrips_Cleaned` AS t1
WHERE member_casual = 'casual'

/*Result:
This query counts the number of rides for members and casual riders. The results show that members have a significantly higher number of rides compared to casual riders, indicating that members are more frequent users of the bike-sharing service.
Members rode 3044939 times and Casual riders rode 1803105 times.
*/