# Step-by-Step: Filter data with SQL

Example 1: Filter data in SQL

```sql
SELECT *
FROM `projectID.movie_data.movies`
WHERE Genre = 'Comedy';
```

# Step-by-Step: Sort data with SQL

**Example 1: Sort data by one column**

```sql
SELECT *
FROM projectID.movie_data.movies
ORDER BY `Release Date`; -- Use ASC or DESC to sort in ascending or descending order
```

**Example 2: Filter and sort data in descending order**

```sql
SELECT *
FROM projectID.movie_data.movies
WHERE Genre = "Comedy"
ORDER BY `Release Date` DESC;
```

**Example 3: Filter on two conditions, then sort data in descending order**

```sql
SELECT *
FROM projectID.movie_data.movies
WHERE Genre = "Comedy"
AND Revenue > 300000000
ORDER BY `Release Date` DESC;
```

# Transform data with SQL

Data analysts usually need to convert data from one format to another to complete an analysis. But what if you are using SQL rather than a spreadsheet? Just like spreadsheets, SQL uses standard rules to convert one type of data to another. If you are wondering why data transformation is an important skill to have as a data analyst, think of it like being a driver who is able to change a flat tire. Being able to convert data to the right format speeds you along in your analysis. You don’t have to wait for someone else to convert the data for you.

![A series of icons: a magnifying glass, an open book, a calendar with a pencil, a signpost, and thumbs up sign](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/9sPPM-2QT7qDzzPtkG-6ZA_f4f06d6d1c984fb29bd12f269513a5dd_Screen-Shot-2021-03-05-at-2.22.21-PM.png?expiry=1750896000000&hmac=_UGnv0DsVBSgPzHaEu-j1xUY0aIOxXOZgHtKvcTHlNk)

In this reading, you will go over the conversions that can be done using the **CAST** function. There are also more specialized functions like **COERCION** to work with big numbers, and **UNIX_DATE** to work with dates. UNIX_DATE returns the number of days that have passed since January 1, 1970 and is used to compare and work with dates across multiple time zones. You will likely use CAST most often.

## Common conversions

The following table summarizes some of the more common conversions made with the CAST function. Refer to [Conversion Rules in Standard SQL](https://cloud.google.com/bigquery/docs/reference/standard-sql/conversion_rules "This link takes you to the Google Cloud BigQuery documentation on SQL.") for a full list of functions and associated rules.


| **Starting with** | **CAST function can convert to:**                                                                                                                                                          |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Numeric (number)  | \- Integer <br />- Numeric (number) <br />- Big number <br />- Floating integer <br />- String                                                                                             |
| String            | \- Boolean <br />- Integer <br />- Numeric (number) <br />- Big number <br />- Floating integer <br />- String <br />- Bytes <br />- Date <br />- Date time <br />- Time <br />- Timestamp |
| Date              | \- String <br />- Date <br />- Date time - Timestamp                                                                                                                                       |

## The CAST function (syntax and examples)

CAST is an American National Standards Institute (ANSI) function used in lots of programming languages, including BigQuery. This section provides the BigQuery syntax and examples of converting the data types in the first column of the previous table. The syntax for the CAST function is as follows:

```sql
CAST(expression AS typename)
```

Where **expression** is the data to be converted and **typename** is the data type to be returned.

### **Converting a number to a string**

The following CAST statement returns a string from a numeric identified by the variable MyCount in the table called MyTable.

```sql
SELECT CAST(MyCount AS STRING) FROM MyTable
```

In the above SQL statement, the following occurs:

* SELECT indicates that you will be selecting data from a table
* CAST indicates that you will be converting the data you select to a different data type
* AS comes before and identifies the data type which you are casting to
* STRING indicates that you are converting the data to a string
* FROM indicates which table you are selecting the data from

### **Converting a string to a number**

The following CAST statement returns an integer from a string identified by the variable MyVarcharCol in the table called MyTable. (An integer is any whole number.)

```sql
SELECT CAST(MyVarcharCol AS INT) FROM MyTable
```

In the above SQL statement, the following occurs:

* SELECT indicates that you will be selecting data from a table
* CAST indicates that you will be converting the data you select to a different data type
* AS comes before and identifies the data type which you are casting to
* INT indicates that you are converting the data to an integer
* FROM indicates which table you are selecting the data from

### **Converting a date to a string**

The following CAST statement returns a string from a date identified by the variable MyDate in the table called MyTable.

```sql
SELECT CAST(MyDate AS STRING) FROM MyTable
```

In the above SQL statement, the following occurs:

* SELECT indicates that you will be selecting data from a table
* CAST indicates that you will be converting the data you select to a different data type
* AS comes before and identifies the data type which you are casting to
* STRING indicates that you are converting the data to a string
* FROM indicates which table you are selecting the data from

### **Converting a date to a datetime**

Datetime values have the format of YYYY-MM-DD hh: mm: ss format, so date and time are retained together. The following CAST statement returns a datetime value from a date.

```sql
SELECT CAST (MyDate AS DATETIME) FROM MyTable
```

In the above SQL statement, the following occurs:

* SELECT indicates that you will be selecting data from a table
* CAST indicates that you will be converting the data you select to a different data type
* AS comes before and identifies the data type which you are casting to
* DATETIME indicates that you are converting the data to a datetime value
* FROM indicates which table you are selecting the data from

## The SAFE_CAST function

Using the CAST function in a query that fails returns an error in BigQuery. To avoid errors in the event of a failed query, use the SAFE_CAST function instead. The SAFE_CAST function returns a value of Null instead of an error when a query fails.

The syntax for SAFE_CAST is the same as for CAST. Simply substitute the function directly in your queries. The following SAFE_CAST statement returns a string from a date.

```sql
SELECT SAFE_CAST(MyDate AS STRING) FROM MyTable
```

## More information

Browse these resources for more information about data conversion using other SQL dialects (instead of BigQuery):

* [CAST and CONVERT](https://docs.microsoft.com/en-us/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-ver15 "This link takes you to Microsoft SQL Server documentation for CAST and CONVERT."): SQL Server reference documentation
* [MySQL CAST Functions and Operators](https://dev.mysql.com/doc/refman/8.0/en/cast-functions.html "This link takes you to MySQL reference documentation for CAST functions."): MySQL reference documentation
* [How to: SQL Type Casting](https://www.blendo.co/blog/how-to-sql-type-casting/ "This link takes you to a blog on type casting in SQL."): Blog about type casting that has links to other SQL short guides

# **Import data in SQL**

In contrast to spreadsheets, SQL does not include a function for importing data. Instead, a method you can use to import data from one table to another is to use the INSERT INTO command together with a SELECT statement. The syntax is:

```sql
INSERT INTO [destination_table_name]
SELECT [column names, separated by commas, or * for all columns]
FROM [source_table_name]
WHERE [condition]
```

In this syntax, the SQL query inserts rows from a source table into a destination table based on the WHERE clause.

For example, imagine you work for a retail company that stores its sales and customer information in a SQL database. The marketing director asks you to provide them with a table containing the names and addresses of customers who have not made a purchase this year and who live in specific postal codes. One way you could gather this information is to use the INSERT INTO along with the SELECT and WHERE commands, as follows:

```sql
INSERT INTO customer_promotion
SELECT *
FROM customers
WHERE total_sales = 0 AND postal_code = '12345'
```

# **Combine data in SQL**

In SQL, use the CONCAT function to join strings together to create new text strings. You might combine data simply to improve the readability of reports (such as combining a customer’s first and last name when generating a customer list). Or, you might combine data to generate a unique identifier for the rows in a table. Here is the basic syntax:

```sql
SELECT CONCAT(field1, " ", field2)
FROM [table_name]
```

Notice that this syntax includes " " so that there is a space between the combined fields. With this syntax, SQL combines field1 and field2 with a space between them.

By default, SQL includes the field names as headers when you run a query. However, if you use the CONCAT function, SQL doesn’t know what to use as a header. For this reason, you should include an alias for the combined fields to help with readability. You give the combined fields an alias by using AS:

```sql
SELECT CONCAT(field1, " ", field2) AS alias
FROM [table_name]
```

For example, if you plan to use CONCAT to combine the first and last names of your company’s customers into a single expression, you could use this query:

```sql
SELECT CONCAT(first_name, " ", last_name) AS Customer_Name
FROM [table_name]
```

# Step-by-Step: Merge text strings to gain insights

Example: Use CONCAT on the bike sharing dataset

```sql
SELECT
  usertype,
  CONCAT (start_station_name," to ", end_station_name) AS route, 
  COUNT (*) as num_trips,
  ROUND(AVG(cast(tripduration as int64)/60),2) AS duration 
FROM 
  `bigquery-public-data.new_york.citibike_trips`
GROUP BY
  start_station_name, end_station_name, usertype 
ORDER BY 
  num_trips DESC 
LIMIT 10
```

# Manipulate strings with SQL

An important part of a data analyst’s job is knowing how to convert and manipulate data for analysis. One way data analysts manipulate strings is to concatenate them, which means to join together two or more text strings. Once strings are concatenated, they form a new, longer text string for analysis. In this reading, you'll learn about different SQL functions that can be used to concatenate strings.

## CONCAT in action

Here are some examples of how you might use CONCAT as you work with data.

### CONCAT

You’re working with the marketing team on an email campaign, and you need to generate full names from your database’s first and last name columns. SQL's CONCAT function allows you to join together two or more string values, simplifying this task, as follows:

```sql
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name 
FROM 
    customers;
```

In this example, CONCAT merges the first_name and last_name fields to create a new field called full_name. The space (' ') separator ensures the full name appears properly.

### CONCAT_WS

Now, you're tasked with creating a report that includes a website's URL components: the protocol (http), domain name (your_company), and domain (com). You'd use CONCAT_WS, which stands for CONCAT With Separator, to achieve this. It's similar to CONCAT, but it includes a separator, such as a space or period, between the strings.

```sql
SELECT CONCAT_WS('.', 'www', 'your_company', 'com') as website 
FROM web_data;
```

Here, CONCAT_WS adds a period ('.') between each part of the website URL, ensuring the URL is in the correct, navigable format.

### CONCAT with **||**

In BigQuery, you can use the || operator to concatenate strings. For instance, if you're working with a dataset of book information and want to create a full title by combining the book's name and its edition, you could use ||, like so:

```sql
SELECT book_name || ' - ' || edition AS full_book_title 
FROM library;
```

This script combines the book name and edition, separated by a hyphen for clarity, providing a complete, informative title for your records.

**Note:** In some other SQL environments, you cannot use the || operator to concatenate strings. You must use + instead. For example, to concatenate the strings 'Google' and '.com' in Microsoft SQL server, you would use:

```sql
SELECT 'Google' + '.com'
```

Always ensure you're using the correct syntax for the specific SQL environment you're working in!

## Concatenate strings with SQL

Review the table below as a summary of the CONCAT function and its variations in SQL.


| **Function/ operator** | **Use**                                                                       | **Example**                              | **Result**     |
| ------------------------ | ------------------------------------------------------------------------------- | ------------------------------------------ | ---------------- |
| CONCAT                 | Concatenate strings to create new text strings                                | CONCAT('Google', '.com')                 | Google.com     |
| CONCAT_WS              | Concatenate two or more strings together with a separator between each string | CONCAT_WS(' . ', 'www', 'google', 'com') | www.google.com |

# Step-by-Step: Explore how JOINs work

### Common JOINs

This video explores exactly how JOINs work. A JOIN** **is a SQL clause that is used to combine rows from two or more tables based on a related column. The instructor discusses the different types of JOINs in more detail in the video; here’s a quick reference you can review as you follow along:

* **INNER JOIN**: a function that returns records with matching values in both tables
* **LEFT JOIN**: a function that returns all the records from the left table (first mentioned) and only the matching records from the right table (second mentioned)
* **RIGHT JOIN**: a function that returns all records from the right table (second mentioned) and only the matching records from the left table (first mentioned).
* **OUTER JOIN**: a function that combines the RIGHT JOIN and LEFT JOIN to return all matching records in both tables.

## Example 1: INNER JOIN

```sql
SELECT
	employees.name AS employee_name,
	employees.role AS employee_role,
	departments.name AS department_name
FROM
	[your-project-id].employee_data.employees AS employees
INNER JOIN
	[your-project-id].employee_data.departments AS departments
	ON employees.department_id = departments.department_id
```

## Example 2: LEFT JOIN

```sql
SELECT
	employees.name AS employee_name,
	employees.role AS employee_role,
	departments.name AS department_name
FROM
	[your-project-id].employee_data.employees AS employees 
LEFT JOIN
	[your-project-id].employee_data.departments AS departments
    ON employees.department_id = departments.department_id
```

## Example 3: RIGHT JOIN

```sql
SELECT
	employees.name AS employee_name,
	employees.role AS employee_role,
	departments.name AS department_name
FROM
	[your-project-id].employee_data.employees AS employees 
RIGHT JOIN
	[your-project-id].employee_data.departments AS departments
    ON employees.department_id = departments.department_id
```

## Example 4: FULL OUTER JOIN

```sql
SELECT
	employees.name AS employee_name,
	employees.role AS employee_role,
	departments.name AS department_name
FROM
	[your-project-id].employee_data.employees AS employees 
FULL OUTER JOIN
	[your-project-id].employee_data.departments AS departments
      ON employees.department_id = departments.department_id
```

# Secret identities: The importance of aliases

In this reading, you will learn about using aliasing to simplify your SQL queries. **Aliases** are used in SQL queries to create temporary names for a column or table. Aliases make referencing tables and columns in your SQL queries much simpler when you have table or column names that are too long or complex to make use of in queries. Imagine a table name like special_projects_customer_negotiation_mileages. That would be difficult to re-enter every time you use that table. With an alias, you can create a meaningful nickname that you can use for your analysis. In this case special_projects_customer_negotiation_mileages can be aliased to simply mileage. Instead of having to write out the long table name, you can use a meaningful nickname that you decide.

## Basic syntax for aliasing

**Aliasing** is the process of using aliases. In SQL queries, aliases are implemented by making use of the AS command. The basic syntax for the AS command can be seen in the following query for aliasing a table:

```sql
SELECT column_name(s)
FROM table_name AS alias_name;
```

Notice that AS is preceded by the table name and followed by the new nickname. It is a similar approach to aliasing a column:

```sql
SELECT column_name AS alias_name
FROM table_name;
```

In both cases, you now have a new name that you can use to refer to the column or table that was aliased.

### **Alternate syntax for aliases**

If using AS results in an error when running a query because the SQL database you are working with doesn't support it, you can leave it out. In the previous examples, the alternate syntax for aliasing a table or column would be:

* FROM table_name alias_name
* SELECT column_name alias_name

The key takeaway is that queries can run with or without using AS for aliasing, but using AS has the benefit of making queries more readable. It helps to make aliases stand out more clearly.

## Aliasing in action

Let’s check out an example of a SQL query that uses aliasing. Let’s say that you are working with two tables: one of them has employee data and the other one has department data. The FROM statement to alias those tables could be:

```sql
FROM work_day.employees AS employees
```

These aliases still let you know exactly what is in these tables, but now you don’t have to manually input those long table names. Aliases can be really helpful for long, complicated queries. It is easier to read and write your queries when you have aliases that tell you what is included within your tables.

## For more information

If you are interested in learning more about aliasing, here are some resources to help you get started:

* [**SQL Aliases**](https://www.w3schools.com/sql/sql_alias.asp "This link takes you to the W3 Schools tutorial on SQL aliases.")**:** This tutorial on aliasing is a really useful resource to have when you start practicing writing queries and aliasing tables on your own. It also demonstrates how aliasing works with real tables.
* [**SQL Alias**](https://www.sqltutorial.org/sql-alias/ "This link takes you to SQL Tutorial's SQL Alias tutorial.")**:** This detailed introduction to aliasing includes multiple examples. This is another great resource to reference if you need more examples.
* [**Using Column Aliasing**](https://documentation.sas.com/?cdcId=pgmsascdc&cdcVersion=9.4_3.5&docsetId=sqlproc&docsetTarget=p0aymxwsvbt5wcn1lncugwjtf758.htm&locale=en "This link takes you to SAS documentation that describes column aliasing.")**:** This is a guide that focuses on column aliasing specifically. Generally, you will be aliasing entire tables, but if you find yourself needing to alias just a column, this is a great resource to have bookmarked.

# Use JOINs effectively

In this reading, you will review how JOINs are used and will be introduced to some resources that you can use to learn more about them. A JOIN combines tables by using a primary or foreign key to align the information coming from both tables in the combination process. JOINs use these keys to identify relationships and corresponding values across tables.

If you need a refresher on primary and foreign keys, refer to the [glossary](https://www.coursera.org/learn/analyze-data/supplement/0p8b6/glossary-terms-and-definitions "glossary") for this course, or go back to [Databases in data analytics](https://www.coursera.org/learn/data-preparation/supplement/uXqEX/databases-in-data-analytics "Databases in data analytics").

## The general JOIN syntax

```sql
SELECT 
   -- table columns from tables are inserted here
   table_name1.column_name
   table_name2.column_name
FROM
   table_name1
JOIN
   table_name2
ON table_name1.column_name = table_name2.column_name
```

As you can see from the syntax, the JOIN statement is part of the FROM clause of the query. JOIN in SQL indicates that you are going to combine data from two tables. ON in SQL identifies how the tables are to be matched for the correct information to be combined from both.

## Type of JOINs

There are four general ways in which to conduct JOINs in SQL queries: INNER, LEFT, RIGHT, and FULL OUTER.

![4 venn diagrams illustrating JOINs](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/V3K80lLeRfayvNJS3tX2DQ_c5371083976944c7808132ca392f419d_Screen-Shot-2021-02-07-at-5.14.41-PM.png?expiry=1750982400000&hmac=letWuKPuPgarG1b_UmwBGLAoUh8Sb08qFLOmcz5o9Fg)The circles represent left and right tables, and where they are joined is highlighted in blue

Here is what these different JOIN queries do.

### INNER JOIN

INNER is *optional* in this SQL query because it is the default as well as the most commonly used JOIN operation. You may see this as JOIN only. INNER JOIN returns records if the data lives in both tables. For example, if you use INNER JOIN for the customers and orders tables and match the data using the customer_id key, you would combine the data for each customer_id that exists in both tables. If a customer_id exists in the customers table but not the orders table, data for that customer_id isn’t joined or returned by the query.

```sql
SELECT
   customers.customer_name,
   orders.product_id,
   orders.ship_date
FROM
   customers 
INNER JOIN 
   orders 
ON customers.customer_id = orders.customer_id
```

The results from the query might look like the following, where customer_name is from the customers table and product_id and ship_date are from the orders table:


| customer_name          | product_id | ship_date  |
| ------------------------ | ------------ | ------------ |
| Martin's Ice Cream     | 043998     | 2021-02-23 |
| Beachside Treats       | 872012     | 2021-02-25 |
| Mona's Natural Flavors | 724956     | 2021-02-28 |
| ... etc.               | ... etc.   | ... etc.   |

The data from both tables was joined together by matching the customer_id common to both tables. Notice that customer_id doesn’t show up in the query results. It is simply used to establish the relationship between the data in the two tables so the data can be joined and returned.

### LEFT JOIN

You may see this as LEFT OUTER JOIN, but most users prefer LEFT JOIN. Both are correct syntax. LEFT JOIN returns all the records from the left table and only the matching records from the right table. Use LEFT JOIN whenever you need the data from the entire first table and values from the second table, if they exist. For example, in the query below, LEFT JOIN will return customer_name with the corresponding sales_rep, if it is available. If there is a customer who did not interact with a sales representative, that customer would still show up in the query results but with a NULL value for sales_rep.

```sql
SELECT
   customers.customer_name, 
   sales.sales_rep
FROM 
   customers 
LEFT JOIN 
   sales 
ON customers.customer_id = sales.customer_id
```

The results from the query might look like the following where customer_name is from the customers table and sales_rep is from the sales table. Again, the data from both tables was joined together by matching the customer_id common to both tables even though customer_id wasn't returned in the query results.


| customer_name          | sales_rep  |
| ------------------------ | ------------ |
| Martin's Ice Cream     | Luis Reyes |
| Beachside Treats       | NULL       |
| Mona's Natural Flavors | Geri Hall  |
| ...etc.                | ...etc.    |

### RIGHT JOIN

You may see this as RIGHT OUTER JOIN or RIGHT JOIN. RIGHT JOIN returns all records from the right table and the corresponding records from the left table. Practically speaking, RIGHT JOIN is rarely used. Most people simply switch the tables and stick with LEFT JOIN. But using the previous example for LEFT JOIN, the query using RIGHT JOIN would look like the following:

```sql
SELECT
   sales.sales_rep,
   customers.customer_name
FROM 
  sales 
RIGHT JOIN 
  customers 
ON sales.customer_id = customers.customer_id
```

The query results are the same as the previous LEFT JOIN example.


| customer_name          | sales_rep  |
| ------------------------ | ------------ |
| Martin's Ice Cream     | Luis Reyes |
| Beachside Treats       | NULL       |
| Mona's Natural Flavors | Geri Hall  |
| ...etc.                | ...etc.    |

### FULL OUTER JOIN

You may sometimes see this as FULL JOIN. FULL OUTER JOIN returns all records from the specified tables. You can combine tables this way, but remember that this can potentially be a large data pull as a result. FULL OUTER JOIN returns all records from *both* tables even if data isn’t populated in one of the tables. For example, in the query below, you will get all customers and their products’ shipping dates. Because you are using a FULL OUTER JOIN, you may get customers returned without corresponding shipping dates or shipping dates without corresponding customers. A NULL value is returned if corresponding data doesn’t exist in either table.

```sql
SELECT
   customers.customer_name,
   orders.ship_date
FROM 
   customers 
FULL OUTER JOIN 
   orders
ON customers.customer_id = orders.customer_id
```

The results from the query might look like the following.


| customer_name          | ship_date  |
| ------------------------ | ------------ |
| Martin's Ice Cream     | 2021-02-23 |
| Beachside Treats       | 2021-02-25 |
| NULL                   | 2021-02-25 |
| The Daily Scoop        | NULL       |
| Mountain Ice Cream     | NULL       |
| Mona's Natural Flavors | 2021-02-28 |
| ...etc.                | ...etc.    |

## For more information

JOINs are going to be useful for working with relational databases and SQL—and you will have plenty of opportunities to practice them on your own. Here are a few other resources that can give you more information about JOINs and how to use them:

* [**SQL JOINs**](https://www.w3schools.com/sql/sql_join.asp "This link takes you to a W3 Schools tutorial on SQL JOINs.")**: **This is a good basic explanation of JOINs with examples. If you need a quick reminder of what the different JOINs do, this is a great resource to bookmark and come back to later.
* [**Database JOINs - Introduction to JOIN Types and Concepts**](https://www.essentialsql.com/introduction-database-joins/ "This link takes you to a series of articles about database JOINs.")**: **This is a really thorough introduction to JOINs. Not only does this article explain what JOINs are and how to use them, but it also explains the various scenarios in more detail of when and why you would use the different JOINs. This is a great resource if you are interested in learning more about the logic behind JOINing.
* [**SQL JOIN Types Explained in Visuals**](https://dataschool.com/how-to-teach-people-sql/sql-join-types-explained-visually/ "This link takes you to an article that visually explains SQL JOIN types.")**:**** **This resource has a visual representation of the different JOINs. This is a really useful way to think about JOINs if you are a visual learner, and it can be a really useful way to remember the different JOINs.
* [**SQL JOINs: Bringing Data Together One Join at a Time**](https://towardsdatascience.com/sql-join-8212e3eb9fde "This link takes you to a Toward Data Science article about SQL JOINs.")**: **Not only does this resource have a detailed explanation of JOINs with examples, but it also provides example data that you can use to follow along with their step-by-step guide. This is a useful way to practice JOINs with some real data.
* [**SQL JOIN:**](https://www.dofactory.com/sql/join "This link takes you to an SQL tutorial on SQL JOIN.") This is another resource that provides a clear explanation of JOINs and uses examples to demonstrate how they work. The examples also combine JOINs with aliasing. This is a great opportunity to see how JOINs can be combined with other SQL concepts that you have been learning about in this course

# Step-by-Step: Queries within queries

## Example 1: Use a subquery in a SELECT statement

```sql
SELECT
	station_id,
	num_bikes_available,
	(SELECT
		AVG(num_bikes_available)
	FROM bigquery-public-data.new_york.citibike_stations) AS avg_num_bikes_available
FROM bigquery-public-data.new_york.citibike_stations;
```

![Screenshot of the query results.](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/64kLJr5ESZCaTXvmkuWGng_8da15723b5b948cea0ce5ad12a2f4ff1_DA_C5M3_step-by-step_queries_within_queries_1.png?expiry=1750982400000&hmac=Veftx3lAmcnPb8Jc5jwbK6mCngvdNQd_u0NZR2I0668)

## Example 2: Use a subquery in a FROM statement

```sql
SELECT 
	station_id,
	name,
	number_of_rides AS number_of_rides_starting_at_station
FROM
	(
		SELECT
			CAST(start_station_id AS STRING) AS start_station_id_str, #**
			COUNT(*) AS number_of_rides
		FROM 
      		bigquery-public-data.new_york.citibike_trips
		GROUP BY 
			CAST(start_station_id AS STRING) #**
	)
	AS station_num_trips
	INNER JOIN 
		bigquery-public-data.new_york.citibike_stations 
	ON 
		station_id = start_station_id_str #**
	ORDER BY 
		number_of_rides DESC;
```

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/PjfgMtzNQS6nJQfOEPGdag_9f96e056dcbb4ad5be6c1e673267dff1_DA_C5M3_step-by-step_queries_within_queries_2.png?expiry=1750982400000&hmac=00qvAO_uLbVp7TR23XevTCrsrjT4fkttmTxmcpOd_Ws)

## Example 3: Use a subquery in a WHERE statement

```sql
SELECT
	station_id,
	name
FROM
	bigquery-public-data.new_york.citibike_stations
WHERE
	station_id IN
	(
		SELECT
			CAST(start_station_id AS STRING) AS start_station_id_str #**
		FROM
	    	bigquery-public-data.new_york.citibike_trips
	  	WHERE
			usertype = 'Subscriber'
  	);
```

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/x7a4Yy0VTbCS-8uuACXYGQ_478d3dfa94f246378e8b8a4ed7c326f1_DA_C5M3_step-by-step_queries_within_queries_3.png?expiry=1750982400000&hmac=aDD7Qxbytn8wdGw1wTAoMQvt0Eg-BQOvOaT3zt1oBGQ)

# Step-by-Step: Use subqueries to aggregate data

## Objective

The objective of this query is to aggregate the data into a table containing each warehouse's ID, state and alias, and  number of orders; as well as the grand total of orders for all warehouses combined; and finally a column that classifies each warehouse by the percentage of grand total orders that it fulfilled: 0–20%, 21-60%, or > 60%.

**Note:** This activity breaks out the steps into manageable chunks. The final query is only intended to be run at the end. If you try to run the query before reaching the end of this guide you will likely get an error.

## Example: Combine and alias the tables

As a refresher, aliasing is when you temporarily name a table or column in your query to make it easier to read and write. To alias the warehouse and orders tables and join the tables, follow these steps. Remember, these statements require that you enter your unique individual project name or else they won't run. Be sure to substitute your project name in the code wherever you encounter your-project written. If you haven't explicitly assigned a project name, BigQuery generates one for you automatically. It typically looks like two words and a number, each separated by a hyphen, for example august-west-100777.

Begin with the FROM statement a few rows down. Later, you'll return to the top of the query to fill it in.

1. In row 3, enter FROM your-project.warehouse_orders.warehouse AS Warehouse
2. In row 4, enter LEFT JOIN your-project.warehouse_orders.orders AS Orders
3. In row 5, enter ON Orders.warehouse_id = Warehouse.warehouse_id

These statements will combine the two tables (warehouse and orders) using warehouse_id as the common key (the column shared by both tables).

```sql
-- (You'll return to complete the SELECT statement later)

FROM your-project.warehouse_orders.warehouse AS Warehouse
LEFT JOIN your-project.warehouse_orders.orders AS Orders
ON Orders.warehouse_id = Warehouse.warehouse_id
```

## Example: Organize your new table

Use the GROUP BY clause in SQL to group rows that have the same values in specified columns into aggregated data, such as sum, count, average, maximum, or minimum, based on the values in another column. This operation is particularly useful in databases where there is a need to analyze data based on certain criteria.

1. In row 6, enter GROUP BY
2. In row 7, enter Warehouse.warehouse_id,
3. In row 8, enter warehouse_name

Here, the combined table is grouped first by the warehouse ID and then by its name.

```sql
-- (You'll return to complete the SELECT statement later)

FROM your-project.warehouse_orders.warehouse AS Warehouse
LEFT JOIN your-project.warehouse_orders.orders AS Orders
ON Orders.warehouse_id = Warehouse.warehouse_id
GROUP BY
  Warehouse.warehouse_id,
  warehouse_name

```

## Example: Build subquery logic

Now that you have the FROM statement and JOIN, go back up to the first lines and define the rows to select and operations to perform on them. From the objective, you know you want to return **five columns**: each warehouse's ID (warehouse_id—column 1), state and alias (this info will be combined into a single column: warehouse_name— column 2), and number of orders (number_of_orders—column 3); as well as the grand total of orders for all warehouses combined (total_orders—column 4); and finally a column that classifies each warehouse by the percentage of grand total orders that it fulfilled: 0–20%, 21-60%, or > 60% (fulfillment_summary—column 5).

Above everything you've written so far, write:

1. In row 1, enter SELECT
2. In row 2, enter Warehouse.warehouse_id, # (This is the first column.)
3. In row 3, enter CONCAT(Warehouse.state, ': ', Warehouse.warehouse_alias) AS warehouse_name, #  (This is the second column. Notice you're concatenating two existing columns into a new one)
4. In row 4, enter COUNT(Orders.order_id) AS number_of_orders, # (This is the third column.)
5. In row 5, enter** **(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) AS total_orders, # (This is the fourth column.)

To create the final column, you'll need to use a special keyword.

```sql
SELECT
  Warehouse.warehouse_id,  -- First column
  CONCAT(Warehouse.state, ': ', Warehouse.warehouse_alias) AS warehouse_name,  -- Second column
  COUNT(Orders.order_id) AS number_of_orders,  -- Third column
  (SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) AS total_orders,  -- Fourth column

FROM your-project.warehouse_orders.warehouse AS Warehou_

```

## Example: Create categories using CASE

Use the CASE keyword in SQL to create categories or group data based on specific conditions. This is valuable when dealing with numerical or textual data that needs to be segmented into different groups or categories for analysis, reporting, or visualization purposes.

For the final column, you'll use CASE to define which label to apply to each warehouse's fulfillment percentage (the percentage of the grand total of orders that it fulfilled). There will be three conditions, and thus three possible labels: "Fulfilled 0–20% of Orders", "Fulfilled 21–60% of Orders", or "Fulfilled more than 60% of Orders".

1. In row 6, enter CASE
2. In row 7, enter WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) <= 0.20 # (This defines the first possible condition.)
3. In row 8, enter THEN 'Fulfilled 0-20% of Orders' # (THEN defines the label to apply when the first condition is true.)
4. In row 9, enter  WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) > 0.20 # (This is the first part of the second condition.)
5. In row 10, enter AND COUNT(Orders.order_id)/(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) <= 0.60 # (This is the second part of the second condition.)
6. In row 11, enter THEN 'Fulfilled 21-60% of Orders' # (This defines the label to apply when the second condition is true.)
7. In row 12, enter ELSE 'Fulfilled more than 60% of Orders' # (This defines the label to apply when neither of the first two conditions is true.)
8. In row 13, enter END AS fulfillment_summary # (The END keyword terminates the CASE declaration. Then the AS keyword indicates what the resulting column should be named.)

```sql
SELECT
  Warehouse.warehouse_id,  -- First column
  CONCAT(Warehouse.state, ': ', Warehouse.warehouse_alias) AS warehouse_name,  -- Second column
  COUNT(Orders.order_id) AS number_of_orders,  -- Third column
  (SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) AS total_orders,  -- Fourth column
  CASE
    WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) <= 0.20
      THEN 'Fulfilled 0-20% of Orders'
    WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) > 0.20
      AND COUNT(Orders.order_id)/(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) <= 0.60
      THEN 'Fulfilled 21-60% of Orders'
    ELSE 'Fulfilled more than 60% of Orders'
  END AS fulfillment_summary  -- Fifth column

FROM your-project.warehouse_orders.warehouse AS Warehouse
LEFT JOIN your-project.warehouse_orders.orders AS Orders
ON Orders.warehouse_id = Warehouse.warehouse_id
GROUP BY
  Warehouse.warehouse_id,
  warehouse_name

```

## Example: Filter using HAVING

Use the HAVING clause in SQL in combination with the GROUP BY clause to filter the results of aggregate functions in a query. While the WHERE clause filters individual rows *before* they are grouped, the HAVING clause filters groups of rows *after* they have been grouped. To filter out the warehouses that are currently being built (and therefore have no orders), enter the following lines below everything you've written so far:

1. In row 20, enter HAVING
2. In row 21, enter COUNT(Orders.order_id) > 0

Here is the final query:

```sql
SELECT
  Warehouse.warehouse_id,
  CONCAT(Warehouse.state, ': ', Warehouse.warehouse_alias) AS warehouse_name,
  COUNT(Orders.order_id) AS number_of_orders,
  (SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) AS total_orders,
  CASE
    WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) <= 0.20
    THEN 'Fulfilled 0-20% of Orders'
    WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) > 0.20
    AND COUNT(Orders.order_id)/(SELECT COUNT(*) FROM your-project.warehouse_orders.orders AS Orders) <= 0.60
    THEN 'Fulfilled 21-60% of Orders'
    ELSE 'Fulfilled more than 60% of Orders'
  END AS fulfillment_summary
FROM your-project.warehouse_orders.warehouse AS Warehouse
LEFT JOIN your-project.warehouse_orders.orders AS Orders
ON Orders.warehouse_id = Warehouse.warehouse_id
GROUP BY
  Warehouse.warehouse_id,
  warehouse_name
HAVING
  COUNT(Orders.order_id) > 0
```

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/j1x3VEpuRVizCJAQ4BzQDQ_fd7aed1508994362b851c8aafd4f68f1_DA_C5M3L3R2_Use_subqueries_to_aggregate_data_query_result.png?expiry=1750982400000&hmac=SOF3dRB5Q6w8JtrQrUcp-RBObHx1OVqGQz0gK3Pt2lA)

# SQL functions and subqueries: A functional friendship

As you’ve been learning, **SQL functions **are tools built into SQL to facilitate performing calculations. For example, you could use the AVG() function to calculate the average salary of employees in a table so management knows what to budget for next year. Another example might be using the COUNT() function to count the number of orders in a table to track daily order inventory.

A **subquery**, also called an inner or nested query, is a SQL query that is nested inside a larger query. Going back to the previous example, you could add a subquery to your average calculation to identify the names of employees who earn more or less than the average salary to include that information in performance reviews. Subqueries allow more complex questions to be answered in a single query, making data retrieval more efficient. In this reading, you will learn about SQL functions and how they might be used with subqueries.

## How do SQL functions function?

SQL functions help make data aggregation possible. As a refresher, data aggregation is the process of gathering data from multiple sources in order to combine it into a single, summarized collection. Take a moment to review some of these functions to better understand how to run these queries:

* **HAVING**: The HAVING clause filters the results of a SQL query based on conditions applied after the grouping. Check out [W3School’s HAVING overview](http://www-db.deis.unibo.it/courses/TW/DOCS/w3schools/sql/sql_having.asp.html) for a tutorial on this clause
* **CASE**: CASE provides conditional logic in SQL queries, similar to an 'if-else' structure in programming languages. The [W3School’s CASE overview](https://www.w3schools.com/sql/sql_case.asp) explores the use of the CASE statement and how it works.
* **IF**: IF performs a simple conditional test and returns a value depending on the outcome. Review [W3School’s IF overview](https://www.w3schools.com/sql/func_mysql_if.asp) for a tutorial of the IF function and examples that you can practice with.
* **COUNT**: COUNT performs a simple conditional test and returns a value depending on the outcome. Though it seems simple, the COUNT function is just as important as all the rest. The [W3School’s COUNT overview](http://www-db.deis.unibo.it/courses/TW/DOCS/w3schools/sql/sql_func_count.asp.html) provides a tutorial and examples.

## Subqueries

Subqueries can make projects easier and more efficient by allowing complex operations to be performed in a single query, reducing the need for multiple trips to the database. Subqueries also make your code more readable and maintainable. Take the employee salary example mentioned before.:The original query was used to find the average employee salary. By adding a subquery, you can learn this plus identify employees who earn more than the average—all in a single query.

Usually, you will find subqueries nested in the SELECT, FROM, and/or WHERE clauses. There is no general syntax for subqueries, but the syntax for a basic subquery follows a similar pattern:

```sql
SELECT account_table.*
	FROM (
		SELECT *
		FROM transaction.sf_model_feature_2014_01
		WHERE day_of_week = 'Friday'
		) account_table
	WHERE account_table.availability = 'YES'
```

Basically, there’s another SELECT clause inside the first SELECT clause. The second SELECT clause marks the start of the subquery in this statement. There are many different ways in which you can use subqueries, but there are a few rules to follow:

* Subqueries must be enclosed within parentheses.
* A subquery can have one or more columns specified in the SELECT clause.
* Subqueries that return more than one row can only be used with multiple value operators, such as the IN operator which allows you to specify multiple values in a WHERE clause.
* A subquery can’t be nested in a SET command. The SET command is used with UPDATE to specify which columns (and values) are to be updated in a table.

### **Additional resources**

The following resources offer more guidance into subqueries and their usage:

* [**SQL subqueries**](https://www.w3resource.com/sql/subqueries/understanding-sql-subqueries.php):** **This detailed introduction includes the definition of a subquery, its purpose in SQL, when and how to use it, and what the results will be.
* [**Writing subqueries in SQL**](https://mode.com/sql-tutorial/sql-sub-queries/): Explore the basics of subqueries in this interactive tutorial, including examples and practice problems that you can work through.

As you continue to learn more about using SQL, functions, and subqueries, you will realize how much time you can truly save when memorizing these tips and tricks.

![An image of two people giving each other a high five while smiling](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/zvStMbFwSQ20rTGxcAkNDA_c9bd70154d5d4002b519e344be5b763b_Screen-Shot-2021-02-08-at-4.38.18-PM.png?expiry=1750982400000&hmac=tSEXX65QaScWUDIv22pa5OtmrAoJwzGfXo-KIsE-1j8)

# Step-by-Step: Embed simple calculations with SQL

This reading outlines the steps the instructor performs in the next video, [Embed simple calculations with SQL](https://www.coursera.org/learn/analyze-data/lecture/RlnmJ/embed-simple-calculations-in-sql). In this video, the goal is to find out the total number of bags of avocados sold on each date at each location using the dataset you loaded to BigQuery.

Keep this step-by-step guide open as you watch the video. It can serve as a helpful reference if you need additional context or clarification while following the video steps. This is not a graded activity, but you can complete these steps to practice the skills demonstrated in the video.

**What you’ll need**

In order to follow along with the instructor, you will need the [avocado dataset](https://www.kaggle.com/datasets/neuromusic/avocado-prices "Link to the avocado dataset on Kaggle") uploaded into your project space. If you haven’t already uploaded this data, follow the instructions in the [Upload the avocado dataset to BigQuery](https://www.coursera.org/learn/analyze-data/supplement/Y6c0d/upload-the-avocado-dataset-to-bigquery "Link to avocado dataset uploading reading on Coursera ") reading.

## Example 1: Verify the total number of bags

Use the following steps to perform some simple calculations with SQL and verify the total number of bags.

1. Open the BigQuery editor.
2. On line 1, enter SELECT and press **Enter**. You'll use the SELECT command to pull certain columns from the table. Because you are selecting several columns, press **Enter **after SELECT and after the comma after each column name.
3. Enter the following column names into your editor:

```sql
SELECT
    Date,
    Region,
    Small_Bags,
    Large_Bags,
    XLarge_Bags,
    Total_Bags
```

4. Note the use of underscores in this example. Spaces can confuse certain servers and applications. Using underscores helps avoid potential issues while keeping the names readable.
5. Now add the calculation to the query using the names of the three columns with plus signs between them, as shown below. Add _Calc to your new column to compare the columns to each other after you calculate your results.

```sql
SELECT
	Date,
	Region,
	Small_Bags,
	Large_Bags,
	XLarge_Bags,
	Total_Bags,
	Small_Bags + Large_Bags + XLarge_Bags AS Total_Bags_Calc
```

6. Finally, finish the query with FROM and the names of your project, database, and table: your-project.avocado_data.avocado_prices. Note that your-project is unique to you. If you haven't named it yourself, BigQuery assigns a name for you, typically in the form of two words and a six-digit number, each separated by a hyphen (for example, loyal-glass-371423). In the code examples throughout this reading, be sure to replace your-project with your unique project name.

```sql
SELECT
	Date,
	Region,
	Small_Bags,
	Large_Bags,
	XLarge_Bags,
	Total_Bags,
	Small_Bags + Large_Bags + XLarge_Bags AS Total_Bags_Calc
FROM your-project.avocado_data.avocado_prices
```

7. Select **RUN** to run the query. Your query should return a table containing seven columns, as pictured here.

![Screenshot of query results table.](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/ueHMTZf7QvWFPfVu2diRiw_a082241b27e043f494d770f545c580f1_DA_C5M4_step-by-step_embed_simple_calculations_1.png?expiry=1750982400000&hmac=F6cYa3a7oVwRG4tV4bzS1p0aWjqcdmpcbzuwOodPn7g)

## Example 2: Calculate the percentage of small bags

Now that you have verified the total number of bags, you can use those values in another query. You need to find what percent of the total number of bags were small bags. This information might help stakeholders make decisions about how to package avocados or which size bag to run a sale on. Run a new query to calculate the percentage of small bags:

1. Create a new query.
2. Use the **SELECT** command to select the Date, Region, Total_Bags, and Small_Bags columns.

```sql
SELECT
	Date,
	Region,
	Total_Bags,
	Small_Bags,
```

3. To find the percentage of small bags, divide the number of small bags by the number of total bags using a slash (/) as the operator. Put this part of the calculation in parentheses to let the server know that this calculation should be performed first. Then add *100 to give a percentage versus a decimal.

```sql
SELECT
	Date,
	Region,
	Total_Bags,
	Small_Bags,
	(Small_Bags / Total_Bags)*100
```

4. Use the AS command to name this new column Small_Bags_Percent.

```sql
SELECT
	Date,
	Region,
	Total_Bags,
	Small_Bags,
	(Small_Bags / Total_Bags)*100 AS Small_Bags_Percent
```

5. Add FROM** **and the dataset.

```sql
SELECT
	Date,
	Region,
	Total_Bags,
	Small_Bags,
	(Small_Bags / Total_Bags)*100 AS Small_Bags_Percent
FROM 
	your-project.avocado_data.avocado_prices
```

6. Select **RUN** to run the query.
7. The "division by zero" error is the result of values of zero in the Total_Bags column when used to calculate the percentage in line 6. Add a step to solve this. Use the WHERE command. WHERE lets you add a condition to your calculation. In this case, specify to perform the selection only on rows where the total number of bags does not equal zero: WHERE Total_Bags <> 0.

```sql
SELECT
	Date,
	Region,
	Total_Bags,
	Small_Bags,
	(Small_Bags / Total_Bags)*100 AS Small_Bags_Percent
FROM
	your-project.avocado_data.avocado_prices
WHERE
	Total_Bags <>0
```

8. Select **RUN** to run the query again. Your query should return a table containing five columns, the last one being the one you created: Small_Bags_Percent, as depicted in the following screenshot. Notice your new column shows the percentage of the total bag count that is made up of small bags.

![Screenshot of query results. The table has five columns: Date, Region, Total_Bags, Small_Bags, & Small_Bags_Percent.](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/WPIfIJOfQiGCUlzfN5uazA_20afbb88a3c046c18cafc166ed2cdaf1_DA_C5M4_step-by-step_embed_simple_calculations_2.png?expiry=1750982400000&hmac=1AHXQml3rRAEJMiKONtvLa_w8ATO3n-GDbmTAKijH78)

With SQL, you can complete just about any calculation you want during your analysis. Embedding the calculations in your queries will help you keep your analysis organized while getting your results. The methods shown here are just the beginning!

# Work with temporary tables

**Temporary tables** are exactly what they sound like—temporary tables in a SQL database that aren’t stored permanently. In this reading, you will learn the methods to create temporary tables using SQL commands. You will also learn a few best practices to follow when working with temporary tables.

## A quick refresher on what you have already learned about temporary tables

* They are automatically deleted from the database when you end your SQL session.
* They can be used as a holding area for storing values if you are making a series of calculations. This is sometimes referred to as **pre-processing **of the data.
* They can collect the results of multiple, separate queries. This is sometimes referred to as data **staging**. Staging is useful if you need to perform a query on the collected data or merge the collected data.
* They can store a filtered subset of the database. You don’t need to select and filter the data each time you work with it. In addition, using fewer SQL commands helps to keep your data clean.

It is important to point out that each database has its own unique set of commands to create and manage temporary tables. We have been working with BigQuery, so we will focus on the commands that work well in that environment. The rest of this reading will go over the ways to create temporary tables, primarily in BigQuery.

![An image of 3 data tables. The table in the middle is faded surrounded by dotted lines](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/T82tTwpcR8qNrU8KXKfKbQ_3e11a9ce213440b082100988550ce040_Screen-Shot-2021-02-08-at-4.33.14-PM.png?expiry=1750982400000&hmac=HQvfN2fsAc-t-Ik9aTbRrFUsrbsZSP4J84VHh87DGpI)

## Temporary table creation in BigQuery

Temporary tables can be created using different clauses. In BigQuery, the WITH clause can be used to create a temporary table. The general syntax for this method is as follows

```sql
WITH
new_table_data AS (
SELECT *
FROM
Existing_table
WHERE
Tripduration >=60
)
```

Breaking down this query a bit, notice the following:

* The statement begins with the WITH clause followed by the name of the new temporary table you want to create
* The AS clause appears after the name of the new table. This clause instructs the database to put all of the data identified in the next part of the statement into the new table.
* The opening parenthesis after the AS clause creates the subquery that filters the data from an existing table. The subquery is a regular SELECT statement along with a WHERE clause to specify the data to be filtered.
* The closing parenthesis ends the subquery created by the AS clause.

When the database executes this query, it will first complete the subquery and assign the values that result from that subquery to new_table_data, which is the temporary table. You can then run multiple queries on this filtered data without having to filter the data every time.

## Temporary table creation in other databases (not supported in BigQuery)

The following method isn’t supported in BigQuery, but most other versions of SQL databases support it, including SQL Server and mySQL. Using **SELECT** and **INTO**, you can create a temporary table based on conditions defined by a **WHERE** clause to locate the information you need for the temporary table. The general syntax for this method is as follows:

```sql
SELECT
*
INTO
AfricaSales
FROM
GlobalSales
WHERE
Region = "Africa"
```

This SELECT statement uses the standard clauses like FROM and WHERE, but the INTO clause tells the database to store the data that is being requested in a new temporary table named, in this case, AfricaSales.

## User-managed temporary table creation

So far, we have explored ways of creating temporary tables that the database is responsible for managing. But, you can also create temporary tables that you can manage as a user. As an analyst, you might decide to create a temporary table for your analysis that you can manage yourself. You would use the CREATE TABLE statement to create this kind of temporary table. After you have finished working with the table, you would then delete or drop it from the database at the end of your session.

**Note:** BigQuery uses **CREATE TEMP TABLE** instead of CREATE TABLE, but the general syntax is the same.

```sql
CREATE TABLE table_name (
	column1 datatype,
	column2 datatype,
	column3 datatype,
   ....
)
```

After you have completed working with your temporary table, you can remove the table from the database using the DROP TABLE clause. The general syntax is as follows:

```sql
DROP TABLE table_name
```

## Best practices when working with temporary tables

* **Global vs. local temporary tables:** Global temporary tables are made available to all database users and are deleted when all connections that use them have closed. Local temporary tables are made available only to the user whose query or connection established the temporary table. You will most likely be working with local temporary tables. If you have created a local temporary table and are the only person using it, you can drop the temporary table after you are done using it.
* **Dropping temporary tables after use:** Dropping a temporary table is a little different from deleting a temporary table. Dropping a temporary table not only removes the information contained in the rows of the table, but removes the table variable definitions (columns) themselves. Deleting a temporary table removes the rows of the table but leaves the table definition and columns ready to be used again. Although local temporary tables are dropped after you end your SQL session, it may not happen immediately. If a lot of processing is happening in the database, dropping your temporary tables after using them is a good practice to keep the database running smoothly.

## For more information

* [BigQuery Documentation for Temporary Tables](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#temporary_tables "This link takes you to the BigQuery documentation for temporary tables.")**:** Documentation has the syntax to create temporary tables in BigQuery
* [How to use temporary tables via WITH in Google BigQuery](https://www.pascallandau.com/bigquery-snippets/use-temporary-tables-with-named-subquery/?utm_source=blog&utm_medium=rss&utm_campaign=development-feed)**: **Article describes how to use WITH
* [Introduction to Temporary Tables in SQL Server](https://codingsight.com/introduction-to-temporary-tables-in-sql-server/ "This link takes you to an article that describes how to create a temporary table in SQL Server.")**: **Article describes how to use** **SELECT INTO and CREATE TABLE
* [SQL Server Temporary Tables](https://www.sqlservertutorial.net/sql-server-basics/sql-server-temporary-tables/ "This link takes you to a tutorial on how to create temporary tables in SQL Server.")**: **Article describes temporary table creation and removal
* [Choosing Between Table Variables and Temporary Tables](https://www.red-gate.com/hub/product-learning/sql-prompt/choosing-table-variables-temporary-tables "This link takes you to a description of how using table variables differs from using temporary tables.")**: **Article describes the differences between passing variables in SQL statements vs. using temporary tables

# Use Connected Sheets with BigQuery

In this reading, you will learn about Connected Sheets, a tool that allows data professionals to use basic spreadsheet functions to analyze large datasets housed in BigQuery. With Connected Sheets users don’t need to know SQL. Instead, anyone, not just data professionals, can generate insights with basic spreadsheet operations such as formulas, charts, and pivot tables.

# What is Connected Sheets?

![Graphic outlining the benefits of BigQuery, Sheets, and Connected Sheets.](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/oxN7Zm9DQGGjrYd5-3sWkg_e50ca8713b8f408489ceef8a15dc2ff1_oF-N6izP0wLZbug9Jol_fmcrUvE8PXFrNNlAWtMc5RvYAbNcT__u8lo5anTJe6oaUpee-7cQ3CZrc261axCaYVVOMYFzA2kpiXK0s5ltT_QwCbkhCs5O7cy_Lc5XBbWTa__sCvmXqzaG1QH_X0cZ2IM?expiry=1750982400000&hmac=cZ0HbO8d8fH0cBvFUhplt7OI7x12cicUrrT7-lNX6js)

Recall that BigQuery allows users to analyze petabytes (a million gigabytes) of data using complex queries. A benefit of BigQuery is that it reduces the time needed to develop insights from large datasets.

Google Sheets, on the other hand, is a spreadsheet tool that is easy to use and shareable with a familiar interface. It also allows simple and flexible analysis with tools like pivot tables, charts, and formulas.

Connected Sheets integrates both BigQuery and Google Sheets, allowing the user to analyze billions of rows of data in Sheets without any need for specialized knowledge, such as SQL.

Additionally, Connected Sheets is built to handle big data. Users won’t experience the same limitations or performance issues they’ve had in the past (such as data loss) when working with large data sets in spreadsheets.

# Why would a data analytics professional use Connected Sheets?

As a data analytics professional, Connected Sheets can help with several tasks, such as:

* Collaborating with partners, analysts, or other stakeholders in a familiar spreadsheet interface;
* Ensuring a single source of truth for data analysis without additional .csv exports;
* Defining variables so that all users are working with the same data;
* Sharing insights with your team in a secure environment; and
* Streamlining your reporting and dashboard workflows.

Many teams and industries benefit from Connected Sheets such as finance, marketing, and operations teams.

A few example use cases of Connected Sheets include:

* **Business planning:** A user can build and prepare datasets, and then find insights from the data. For example, a data analyst can analyze sales data to determine which products sell better in different locations.
* **Customer service:** A user can find out which stores have the most complaints per 10,000 customers.
* **Sales:** A user can create internal finance and sales reports. After completing, they can share revenue reports with sales reps.
* **Logistics, fulfillment, and delivery:** A user can run real-time inventory management and intelligent analytics tools.

# Connected Sheets benefits

## Collaborate with teammates and stakeholders

Since Connects Sheets lives in Google Workspace, you can easily collaborate with other teammates and stakeholders in your company. If you’d like to limit access, you also control permissions for who can view, edit, or share the data.

## Do more with familiar tools

With Connected Sheets, you can access billions of rows of BigQuery data directly in Sheets. This direct access makes it easier for all employees to track, forecast, and analyze their data to get to better decisions faster.

## Easily visualize data

You can unlock insights from your BigQuery datasets using features you’re already familiar with in Sheets, such as pivot tables, charts, and formulas. These features help visualize large datasets more easily than using a more advanced language such as SQL. However, if you know SQL, you may prefer to use it in certain situations.

## Up to date data

With Connected Sheets, data professionals can ensure they are making decisions based on a single source of truth by setting up automatic refreshes of BigQuery data in Sheets.

## Less data integrity and security risk

While users can access big data with Connected Sheets, they won’t be able to accidentally manipulate or jeopardize the integrity of the data. There’s less security risk because data isn’t stored on individual workstations, it’s stored in the cloud.

# Connected Sheets shortcomings

## Limited free pricing tier

A shortcoming of Connected Sheets is that for the free pricing tier, users only receive 1 terabyte (TB) of processed query data each month. To process more data, you will need to move to a paid tier.

## Data must be housed in BigQuery

Another shortcoming is that you will need access to your data set in BigQuery. Without access to BigQuery, you won’t be able to analyze data in Connected Sheets.

## Query will fail with large results

A third shortcoming is that the Connected Sheets query will fail if the results are too large. Your query will fail if your pivot table has a significant amount of results, which could be anywhere from 30,000 to 50,000. To reduce your results, you can use filters or limit the number of rows per breakout.
