# Cyclistic Bike Share Case Study

## Ask

### Business Task Statement

Cyclistic, a bike-share company in Chicago, aims to increase annual memberships, which are more profitable than casual passes. The key business task is to design marketing strategies to convert casual riders to members by understanding how annual and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics.

**Questions for guiding future marketing program:**

How do annual members and casual riders use Cyclistic bikes differently?
Why would casual riders buy Cyclistic annual memberships?
How can Cyclistic use digital media to influence casual riders to become members

## Prepare

### Description of Data Sources

Data Source: [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)

The analysis uses Cyclistic’s historical trip data over the previous 12 months i.e. June 2024 to July 2025. The dataset includes information such as:

- Ride ID
- Bike type (classic, docked, electric)
- Start and end Station ID and name
- Start and end timestamps
- Start and End Coordinates
- Rider type (casual vs member)

This public dataset, derived from Motivate International Inc., excludes personally identifiable information for privacy compliance. The data has been made available by Motivate International Inc. under this [license](https://www.divvybikes.com/data-license-agreement) The data is stored in Google BigQuery, and subsets were exported to CSV for analysis and visualization in Tableau Public.

## Process

The following steps were following in processing the data:

1.**Data Uploading**

The raw CSV files were uploaded to Google Cloud Storage under the bucket name: DivvyTripData2024-25. The data was accessed in Google BigQuery, where a new dataset and consolidated table were created. Each monthly file was appended to the main BigQuery table, streamlining processing and enabling consistent querying across all records.

2.**Data Exploration**

I ran the queries for each column from left to right in order to determine the **data type** and to uncover any **missing values, outliers, inconsistencies, and errors** within the dataset. Refer [Analysing Data.sql](Google-Data-Analytics-Professional-Certificate/CaseStudy1: Cyclistic Bike Share/Analysing Data.sql) to refer to the queries run.

**Conclusions Drawn:**

* The dataset contains 13 variables with correct data types.
* There are **no NULL ride_id** but **211 Duplicate ride_ids** exist.
* There are **3 unique rideable types** in dataset: electric bike, classic bike, electric scooter.
* There are **2 unique member types** in the dataset: member and casual
* There are **1341897 instances of NULL start_station_id and start_station_name** but there are no cases where a start_station_name is missing, but the start_station_id is known elsewhere in the dataset.
* There are **1380243 instances of NULL end_station_id and end_station_name** but there are no cases where an end_station_name is missing, but the end_station_id is known elsewhere in the dataset.
* There are **7938 instances of NULL end_lat and end_lng**.
* A new column for **ride duration** is required for analysis.
* There are **58 ride_id with negative ride durations**.
* There are **no start or end latitude and latitude outside the acceptable range**.

[asset1](./assets/asset1.png)

3. **Data Cleaning**

A new table is created in the database using [query](./CaseStudy1: Cyclist Bike Share/Data Cleaning.sql) with following changes:

* New columns added: ride_duration, weekday_of_trip, month_of_trip, row_number for duplicate ride_id
* 211 Duplicate ride_id with less accuarte timestamp removed
* Rides with negative ride duration removed

***Note:*** The entries with NULL start_station_id, start_station_name, end_station_id, end_station_name, end_lat, end_lag have not been removed since missing values will not impact our analysis. But removing the same will skew our analysis results.

5. **Data Analysis**

The analysis question is:

> How do annual members and casual riders use Cyclistic bikes differently?

The cleaned data is imported into Tableau for analysis and the figures plotted are displayed below:


