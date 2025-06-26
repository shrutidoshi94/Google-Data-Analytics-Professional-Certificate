# Sort and filter data to keep it organized

The first two phases of data analysis, **Organize data** and **Format and adjust data**, are important for data analysts because they can use these phases to manipulate their data in ways that make important patterns and trends more obvious. Most of the datasets you’ll use as a data analyst will be organized as tables. Tables are helpful because they let you manipulate and categorize your data. Having distinct categories and classifications lets you focus on, and differentiate between, the groups in your data quickly and easily.

Sorting and filtering are two methods you can use to organize, format, and adjust data. For example, a filter can help you find errors or outliers so you can fix or flag them before your analysis. Outliers are data points that are very different from similarly collected data and might not be reliable values. The benefit of filtering the data is that after you fix errors or identify outliers, you can remove the filter and return the data to its original organization.

In this reading, you’ll review sorting and filtering and consider how they can be used together. You’ll also be introduced to how a particular form of sorting is done in a pivot table.

## Sort data

Sorting is the process of arranging data into a meaningful order to make it easier to understand, analyze, and visualize. It ranks your data based on a specific metric you choose. You can sort data in spreadsheets, SQL databases (when your dataset is too large for spreadsheets), and tables in documents.

To rank items or create chronological lists, you can sort by ascending or descending order. Sorting arranges the data in a meaningful way and gives you immediate insights. Sorting also helps you to group similar data together by a classification. For example, if a ski resort design company wants to evaluate the resorts designed by a competitor, a data analyst can sort competitive resorts by locations, runs, acreage, and other factors. This way, the firm’s designers can visit the types of resorts they also design and gather information that could be used in its own future designs.

![This is aAn example of sorting a spreadsheet of ski resorts, including information about resort name, state/territory/country](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/WHXvpntATfChQSG-exnbwg_e40c6a897b7c4ea4ac6a0f22ca5519e1_8TzqPKTZMV1MQRHlSr1s6VQr4vY-ue5B1d3ZRqEKT6snfVRczMT2ifLAd88PvoRCjYaTPZXs3RGgUM038_KcUaNpr7_jyNfr7UL-ULQqd2GVA1QerJeQCh27wE2xFu0miLqQnlTMnXaiKjioEwG5LKaUK2IfGqbgByOGk138tCLheDpY8rnVdVP5Z76QZKT6OQWk81U3ocPO6Byo8foTyYaYZwp2qqjOzaDs6g?expiry=1750896000000&hmac=uwpjG4hyla_OaFNWh9ef_PFOCVrESd9pj-vE5vujze4)An example of sorting a spreadsheet of ski resorts, including information about resort name, state/territory/country, lifts, runs, and acres. The image taker has clicked into the Data menu option, selected Sort sheet, and is hovering over Sort sheet by column A (A to Z).

## Filter data

Sometimes, an analysis may require only a subset of the data in your dataset. You can use a filter to show only the data that meets a specified criteria while hiding the rest. Filtering is useful when you have lots of data. You can save time by zeroing in on the data that’s important for your current analysis or the data that contains errors. Most spreadsheets and SQL databases allow you to filter your data in a variety of ways. Filtering gives you the ability to find what you are looking for without too much effort.

For example, if the ski resort design company wants to inspect specific criteria for the competitive ski resorts they intend to visit and evaluate, a data analyst can filter the competitive resort database to extract information about the number of runs compared to acreage to identify design trends or other insights.

![An example of creating a filter in a spreadsheet of ski resorts](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Xw7QVKG2R-Gc7QoyTFQtIw_ac0089354a1346bb97df4d2655ec1fe1_noY6fYMsWg8nJS64kDUZDX3myITNIPdCDXicuml2syAjA1i3RtOpoYHJHl-pWSOiRTCFMy-7l-UH6oHUC1lW_h6hG3OwuEYnuIZrEc1Dc5fjPjzYcdRE6xeceU6-jutaS0c_zUNQe9xJoRwTOkhWG81_RTsNuwHQhTpkZJNh66OwiRgc-qj83ehfRyppr0uqF6IZKwhcVTp0Z29nrOTqqz9B1waGe9H5IJyVaQ?expiry=1750896000000&hmac=18Jhdr6P0jWKf2rfXW-6nZcscw9E2HMMGlisKaMMQZ8)

![An example of filtering data in a spreadsheet of ski resort information by specific evaluation criteria such as location](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/SgDPUoXIQ7WhGtKTTCKZ-A_c23a1eebc7c64d89ba00b73a9533f4e1_0ePn0aa78jdfZwx2C1SIDV0amIKtd-39qUhrWQhvejNFvTDB8-mto-zVDet0ZjJq7fZh4HCRXpIFs5Q4iI1-7qqaVMYCbPu1YUf5oKUjjPhx2uNdcfIqdNOWgnLoYpTUhK4qmxRf3jqdE0ZuRbRnmR2U2HW7nt258gT5gP0CmCYsbLoQVwzH8XZnIDUJIRmq1qnjCJ9YcGzJEPzyH3eTgrf4pgNMWCBYcvqNvA?expiry=1750896000000&hmac=rygPhrNdRqSeWXR80Cez_wWioSC9sebg83bRCJgX90E)

An example of filtering data in a spreadsheet of ski resort information by specific evaluation criteria such as location, acreage, or number of runs

### **Sort a pivot table**

A pivot table is a data summarization tool used to sort, reorganize, group, count, total, or average data. Items in the row and column areas of a pivot table are sorted in ascending order by any custom list first. If the items aren’t in a custom list, they will be sorted in ascending order by default. But, if you sort in descending order, you are setting up a rule that controls how the field is sorted even after new data points are added. For example, in the ski resort dataset, the pivot table allows locations to be sorted alphabetically by state, territory, or country.

![Image of a pivot table of the ski resort data, with the pivot table editor open and ready for parameters to be entered](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/u3lRUIlqQ-KPIMIOURQy6A_5b0dd2ad1f264272963ea7e7b044dbe1_EuU1DP1DQYMB3tgzFZHANoDEGmEHWf55zjxwjC3PRHG6lSOslfUvEGYNB3sIesFvTyyFjhauzllGbVNjbewnWwhbriZodN-uZ7a5xG_YThe64gW4QA4-Z-Bt_PqoAfH6H2n6SVBXg2RGRgQPAysQH5BYlitBTuR98ul2fC9xPbY81Ps1sLB2LCgoNY1bz7MnSKGqtIDgjwstEjaBgwUKoz54DAjDZ93Gu80zqA?expiry=1750896000000&hmac=klx6Zypd3S_TFylndT05dV2DgruOKnYaARK0XseennQ)Image of a pivot table of the ski resort data, with the pivot table editor open and ready for parameters to be entered. The data is grouped by state, territory, or country.

# Step-by-step: Sort datasets in spreadsheets

Example 1: Sort a sheet with Data > Sort sheet

Example 2: Sort data in a specific column with Data > Sort range

# Step-by-step: Use the SORT function in spreadsheets

**Example 1: Sort guests using =SORT(A2:D6, 2, TRUE)**

- A2:D6 → Range to sort (from Guest to Sent Invitation)
- 2 → Sort by column 2 (which is Table).
- TRUE → Sort in ascending order (e.g., Table 1, 2, 3…).

**Example 2: Customized sort order Data > Sort range > Advanced range sorting options**.

# Sort and filter in Sheets and Excel

In this reading, you’ll examine the sorting and filtering options in Google Sheets and Microsoft Excel. Both offer basic sorting and filtering from set menu options. But if you need more advanced sorting and filtering capabilities, you can use their respective **SORT **and **FILTER **functions.

![Image of lightbulb, money icon, person icon, and an analog clock traveling into an open box](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/bmppX5JORguqaV-STlYLAg_ef52bcfe96594d458b6323df02ec780b_Screen-Shot-2021-03-05-at-1.43.11-PM.png?expiry=1750896000000&hmac=GMRBwjtc9cEYk9OB8TbA7j2RdNoCPE8MnXioqg2_log)

## Sort and filter in Sheets

Sorting in Google Sheets helps you quickly spot trends in numbers and text. For example, as the vice president of sales at a candy company, you want to improve chocolate sales in lower-performing regions—your company makes delicious chocolate and you know sales can improve. As a first step, you examine this by calculating gross (total) revenue of chocolate by sales region. In this case, you could sort the gross revenue column in **descending** (Z to A) order to find the top performing regions at the top, or sort the gross revenue column in **ascending** (A to Z) order to find the lowest performing regions at the top. Then, you can look at patterns in the best and worst regions to explore how to increase sales in the lower-performing regions.

If you want to learn more about the set menu options for sorting and filtering, start with these resources:

* [Sort and filter data](https://support.google.com/docs/answer/3540681) (Google Help Center): instructions to sort data in alphabetical or numerical order and create filter views
* [Sort data by selecting a range of data in a column](https://www.youtube.com/watch?v=VcRBHXBMKBU): video of steps to achieve the task
* [Sort a range of data using sort criteria for multiple columns](https://blog.sheetgo.com/google-sheets-formulas/sort-formula-google-sheets/): technical tip instructions by SheetGo company to sort data across multiple columns

In addition to the standard menu options, the SORT function allows you to do more advanced sorting. Use this function to create custom sorting rules. You can sort the rows of a given range of data by the values in one or more columns. And you can set the sort criteria for each column. Refer to the [SORT function](https://support.google.com/docs/answer/3093150?hl=en) page for the syntax.

Like the SORT function, use the [FILTER function](https://support.google.com/docs/answer/3093197?hl=en) to filter by any matching criteria you like. This creates a custom filter.

As you’ve learned, you can filter data and then sort the filtered results. Using the FILTER and SORT functions together in a range of cells can programmatically and automatically achieve these results for you.

## Sort and filter in Excel

You can also sort in ascending (A to Z) and descending (Z to A) order in Microsoft Excel. Excel offers **Smallest to Largest** and **Largest to Smallest** sorting options when you’re working with numbers.

Similar to the SORT function in Google Sheets, Excel includes custom sort capabilities that are available from the menu. After you select the data range, click the **Sort & Filter** button to select the criteria for sorting. You can even sort by the data in rows instead of by the data in columns if you select **Sort left to right** under **Options**. (**Sort top to bottom** is the default setting to sort the data in columns.)

If you want to learn more about sorting and filtering in Excel, start with these resources:

*[Sort data in a range or table](https://support.microsoft.com/en-us/office/sort-data-in-a-range-or-table-62d0b95d-2a90-4610-a6ae-2e545c4a4654) (Microsoft Support): instructions to perform sorting in a variety of use cases
*[Excel training: sort and filter data](https://support.microsoft.com/en-us/office/video-sort-data-in-a-range-or-table-ffb9fcb0-b9cb-48bf-a15c-8bec9fd3a472#ID0EAABAAA=Transcript) (Microsoft Support): sorting and filtering videos with transcripts
*[Excel: sorting data](https://www.youtube.com/watch?v=Ep5q1cUhQas): video of how to use the **Sort & Filter** and **Data** menu options for sorting

Excel also has [SORT](https://support.microsoft.com/en-us/office/sort-function-22f63bd0-ccc8-492f-953d-c20e8e44b86c), [SORTBY](https://support.microsoft.com/en-us/office/sortby-function-cd2d7a62-1b93-435c-b561-d6a35134f28f), and [FILTER](https://support.microsoft.com/en-us/office/filter-function-f4f7cb66-82eb-4767-8f7c-4877ad80c759) functions. Explore how you can use these functions to automatically sort and filter your data in spreadsheets without having to select any menu options at all.

## Sort and filter manually with menus and buttons

Both Sheets and Excel feature menu options designed to let you sort and filter without using functions. For example, after selecting the data you’d like to sort in Google Sheets, you can choose **Data > Sort sheet** or **Data > Sort range** to sort that data. To filter the data, select all the columns and rows and choose **Data > Create a filter**. In Excel, you can use the **Sort & filter** button to bring up a user-friendly interface that guides you through sorting or filtering.

Finally, when using menus or buttons, here are a couple of best practices:

*Back up or make a copy of your data before making major changes.
*When filtering data, keep in mind that other users may also be accessing the spreadsheet. For example: Filters in Google Sheets can affect all viewers, so you should use filter views for personal filtering.

# Step-by-Step: From one type to another

**Example 1: Check and change data type**

Check your data for inconsistent units of measurement to prevent problems during data analysis by selecting **$**, the currency shortcut key from the menu.

**Example 2: Convert temperatures from Fahrenheit to Celsius**

=CONVERT (B2, "F", “C”)

**Example 3: Lock data in a table**

Copy + Paste Values only

# Convert data in spreadsheets

In this reading, you will learn about converting data from one format to another. One of the ways to help ensure that you have an accurate analysis of your data is by putting all of it in the correct format. This is true even if you have already cleaned and processed your data. As a part of getting your data ready for analysis, you will need to convert and format your data early on in the process.

![A tornado sweeping everything up; an arrow indicating Data Conversion and second image of bar graph, pie chart, line graph](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/uk8iw8DURr2PIsPA1Ha9lA_dce6d0ad92a447fa8978106d9e3ab578_Screen-Shot-2021-02-08-at-4.23.47-PM.png?expiry=1750896000000&hmac=4hZ1lHtB0M_yerlW2RAFU3rhMuCr3pet5GexqWyOXUA)

As a data analyst, there are lots of scenarios when you might need to convert data in a spreadsheet:

### **String to date**

* [**How to convert text to date in Excel**](https://www.ablebits.com/office-addins-blog/2015/03/26/excel-convert-text-date/#:~:text=Excel%20DATEVALUE%20function%20%2D%20change%20text,Excel%20recognizes%20as%20a%20date.&text=So%2C%20the%20formula%20to%20convert,stored%20as%20a%20text%20string. "This link takes you to a blog on how to convert text to a date in Microsoft Excel."): Transforming a series of numbers into dates is a common scenario you will encounter. This resource will help you learn how to use Excel functions to convert text and numbers to dates, and how to turn text strings into dates without a formula.
* [**Google Sheets: Change date format:**](https://www.ablebits.com/office-addins-blog/2019/08/13/google-sheets-change-date-format/ "This link takes you to a blog on how to change to a date format in Google Sheets.") If you are working with Google Sheets, this resource will demonstrate how to convert your text strings to dates and how to apply the different date formats available in Google Sheets.

### **String to numbers**

* [**How to convert text to number in Excel: **](https://www.ablebits.com/office-addins-blog/2018/07/18/excel-convert-text-to-number/ "This link takes you to a blog on how to convert text to a number in Excel.")Even though you will have values in your spreadsheet that resemble numbers, they may not actually be numbers. This conversion is important because it will allow your numbers to add up and be used in formulas without errors in Excel.
* [**How to convert text to numbers in Google Sheets: **](https://productivityspot.com/convert-text-to-numbers-google-sheets/ "This link takes you to instructions to convert text to a number in Google Sheets.")This resource is useful if you are working in Google Sheets; it will demonstrate how to convert text strings to numbers in Google Sheets. It also includes multiple formulas you can apply to your own sheets, so you can find the method that works best for you.

### **Combining columns**

* [**Convert text from two or more cells:**](https://support.microsoft.com/en-us/office/combine-text-from-two-or-more-cells-into-one-cell-81ba0946-ce78-42ed-b3c3-21340eb164a6 "This link takes you to a Microsoft Support page to merge text in multiple cells in Excel.")Sometimes you may need to merge text from two or more cells. This Microsoft Support page guides you through two distinct ways you can accomplish this task without losing or altering your data. It also includes a step-by-step video tutorial to help guide you through the process.
* [**How to split or combine cells in Google Sheets:**](https://www.techrepublic.com/article/how-to-split-or-combine-text-cells-with-google-sheets/ "This link takes you to an article with instructions to split or combine text in cells in Google Sheets.")This guide will demonstrate how to to split or combine cells using Google Sheets specifically. If you are using Google Sheets, this is a useful resource to reference if you need to combine cells. It includes an example using real data.

### **Number to percentage**

* [**Format numbers as percentages:**](https://support.microsoft.com/en-us/office/format-numbers-as-percentages-de49167b-d603-4450-bcaa-31fba6c7b6b4 "This link takes you to a Microsoft Support page for formatting numbers as percentages.") Formatting numbers as percentages is a useful skill to have on any project. This Microsoft Support page will provide several techniques and tips for how to display your numbers as percentages.
* [**TO_PERCENT:**](https://support.google.com/docs/answer/3094284?hl=en "This link takes you to the help page for the TO_PERCENT function in Google Sheets.") This Google Sheets support page demonstrates how to use the TO_PERCENT formula to convert numbers to percentages. It also includes links to other formulas that can help you convert strings.

**Pro tip:** Keep in mind that you may have lots of columns of data that require different formats. Consistency is key, and best practice is to make sure an entire column has the same format.

# **Import data in spreadsheets**

As you learned earlier, in spreadsheets you use the IMPORTRANGE function to import a range of cells from another spreadsheet into your current spreadsheet. The syntax is: **=IMPORTRANGE(spreadsheet_url, range_string).**

In this formula, **spreadsheet_url** is the URL of the spreadsheet from which you want to import data. The specific cells you want to import, such as A2:B6, are specified by range_string. If the spreadsheet has multiple tabs, you also need to specify the name of the tab as part of the range.

An example of this is a company that needs to track who made retirement contributions so that it can make sure the company match is correctly distributed. The analysts would use **IMPORTRANGE** to pull all retirement contribution information into a spreadsheet that contains all of the employees year-end salaries and bonuses. This enables them to determine which employees made contributions and are eligible for matching funds.

# **Combine data in spreadsheets**

In spreadsheets, you use the **CONCATENATE** function to join together two or more text strings, such as combining street addresses and primary contacts in a business’ vendor database.

The basic syntax is **=CONCATENATE(item 1, item 2)**. You can add multiple items by separating them with commas. Where appropriate, such as when you’re combining a customer’s first and last name, you should add a space between the items you’re combining by typing quotation marks space quotation marks [“ ”] between the items. Separate this information by a comma as well. This would change the formula to: **=CONCATENATE(item 1, " ", item 2)**.

# Step-by-Step: Strings in spreadsheet

Example 1: The LEN function **=LEN()**

Example 2: The FIND function **=FIND()**

Example 3: The RIGHT function **=RIGHT()**

Example 4: The LEFT function **=LEFT()**

# Advanced spreadsheet tips and tricks

Like a lot of the things you’re learning in this program, spreadsheets will get easier the more you practice. This reading provides you with a list of resources that may help advance your knowledge and experience with spreadsheet functions and functionality. The goal is to provide you with access to a variety of advanced tips and tricks that will help make you more efficient and effective when working with spreadsheets to perform data analysis. Review the description of each resource below, click the links to learn more, and save or bookmark any links that are useful to you. You can immediately start practicing anything that you learn to increase the chances of your understanding and to build your familiarity with spreadsheets. This reading provides a range of resources, so feel free to explore the ones that are applicable to you and skip the ones that aren’t.

### Google Sheets

* [**Keyboard shortcuts for Google Sheets:**](https://support.google.com/docs/answer/181110 "This link takes you to the Google Help Center page for keyboard shortcuts in Google Sheets.") This is a great resource for quickly learning a range of keyboard shortcuts that can make regular tasks quicker and easier, like navigating your spreadsheet or accessing formulas and functions. This list contains shortcuts for the desktop and mobile versions of Google Sheets so that you can apply them to your work no matter what device you are using.
* [**List of Google Sheets Functions**](https://support.google.com/docs/table/25273?hl=en "This link takes you to the Google Help Center page listing the functions in Google Sheets.")**:** This is a comprehensive list of the Google Sheets functions and syntax. Each function is listed with a link to learn more.
* [**23 Must-Know Google Sheet Formulas**](https://blog.golayer.io/google-sheets/google-sheets-formulas "23 must-know google sheet formulas"):This blog article from *Layer* summarizes and describes 20 of the most useful Google Sheets formulas.
* [**18 Google Sheets Formula Tips and Techniques:**](https://www.benlcollins.com/spreadsheets/google-sheets-formulas-techniques/ "This link takes you to tips and techniques for working with forumulas in Google Sheets.") These are tips for using Google Sheets shortcuts when working with formulas.

### Excel

* [**Keyboard shortcuts in Excel:**](https://support.microsoft.com/en-us/office/keyboard-shortcuts-in-excel-1798d9d5-842a-42b8-9c99-9b7213f0040f?ui=en-US&rs=en-US&ad=US "This link takes you to the Microsoft Support page for keyboard shortcuts in Excel.")Earlier in this list, you were provided with a resource for keyboard shortcuts in Google Sheets. Similarly, this resource provides a list of keyboard shortcuts in Excel that will make performing regular spreadsheet tasks more efficient. This includes keyboard shortcuts for both desktop and mobile versions of Excel, so you can apply them no matter what platform you are working on.
* [**222 Excel shortcuts:**](https://exceljet.net/keyboard-shortcuts "This link takes you to a list of Excel keyboard shortcuts.") A compilation of shortcuts includes links to more detailed explanations about how to use them. This is a great way to quickly reference keyboard shortcuts. The list has been organized by functionality, so you can go directly to the sections that are most useful to you.
* [**List of spreadsheet functions:**](https://exceljet.net/excel-functions "This link takes you to an online list of Excel functions.") This is a comprehensive list of Excel spreadsheet functions with links to more detailed explanations. This is a useful resource to save so that you can reference it often; that way, you’ll have access to functions and examples that you can apply to your work.
* [**List of spreadsheet formulas:**](https://exceljet.net/formulas "This link takes you to an online list of Excel formulas.") Similar to the previous resource, this comprehensive list of Excel spreadsheet formulas with links to more detailed explanations and can be saved and referenced any time you need to check out a formula for your analysis.
* [**Essential Excel Skills for Analyzing Data**:](https://learntocodewith.me/posts/excel-skills/ "This link takes you to a blog article about advanced Excel skills.") This blog post includes more advanced functionalities of some spreadsheet tools that you have previously learned about, like pivot tables and conditional formatting. These skills have been identified as particularly useful for data analysis. Each section includes a how-to video that will take you through the process of using these functions step-by-step, so that you can apply them to your own analysis.
* [**Advanced Spreadsheet Skills:**](https://www.slideshare.net/markjhonoxillo/advanced-spreadsheet-skills) Mark Jhon C. Oxillo’s presentation starts with a basic overview of spreadsheet but also includes advanced functions and exercises to help you apply formulas to actual data in Excel. This is a great way to review some basic concepts and practice the skills you have been learning so far.

There are lots of resources online about advanced spreadsheet tips and tricks. You'll probably discover new resources and tools on your own, but this list is a great starting point as you become more familiar with spreadsheets.

![An image of two hands typing on a keyboard. The desk has a mouse, pencil, and notepad](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/QrDXkEngQiuw15BJ4MIr-A_eca6b56837c84409bdd3759dffe27e17_Screen-Shot-2021-02-08-at-4.35.02-PM.png?expiry=1750896000000&hmac=KvVJLKM5WEz7MQGEvJuKjFoOgGUyq3HexjdedKW07po)

# VLOOKUP Core Concepts

Spreadsheet functions can be used to quickly find information and perform calculations using specific values. VLOOKUP, or Vertical Lookup, is one such function that vertically searches for a certain value in a column to return a corresponding piece of information. In this reading, you’ll examine the intricacies of this extremely useful function so you understand how it works when you use it to analyze data.

## VLOOKUP functionality

VLOOKUP searches for a search term, called a search_key, in one column of a spreadsheet. When the search_key is found, the function returns the data from another column of the row from which it  was located. VLOOKUP returns only the value that corresponds to the first item it matches. So, if there are multiple matching values, the spreadsheet will return only data about the first one.

## VLOOKUP use cases

Here are two common reasons why you might use VLOOKUP:

* **Populating data in a spreadsheet** Perhaps a store manager is tracking incoming shipments before a busy holiday. They could use VLOOKUP to look up product ID codes in a product spreadsheet and retrieve the corresponding product information from another spreadsheet. This would help the manager know how many stock clerks they need to schedule to work when the shipments arrive.
* **Merging data from one spreadsheet with data in another.** If a teacher keeps one spreadsheet for student grades and another for attendance, they could use VLOOKUP to combine the spreadsheets. That way, they could search for a particular student in the attendance sheet, and VLOOKUP would pull the corresponding attendance record into the grades spreadsheet.

## VLOOKUP syntax

VLOOKUP is available in both Microsoft Excel and Google Sheets. Here, you’ll explore its syntax in Google Sheets. Refer to the resources at the end of this reading for more information about VLOOKUP in Microsoft Excel.

**VLOOKUP’s syntax is: VLOOKUP(search_key, range, index, is_sorted)**

### search_key

This is the value the function will search for. It can be a number, text string, or cell reference.

### range

This is the range of cells over which the function will search and return information. The first column in the range is searched. When the search key is found, the index from that row is returned.

For example, if you search for the search_key in column B and return the data from column D, the range would need to include columns B through D, such as the range B2:D10. If you specified a range of A2:D10, the function would search for the search term in column A.

The search_key must be to the left of the information you want the function to return. This may require you to move columns around before you use VLOOKUP. For example, if you plan to search for the search_key column D, but the information you want the function to return is in column A, you must rearrange your columns before using VLOOKUP.

### index

This is the position of the column that contains the data to be returned. The first column in the range is column number 1, and each column is numbered sequentially to the right.

For example, if the range is B2:D10 and you want to return a value from column D, the index number would be 3. If the index is not between 1 and the number of columns in range, the error message #VALUE! will be returned.

### is_sorted

This indicates whether to return an approximate or exact match. For example, if you’re searching for Google, then google would not count as a match.

* To return an exact match, set is_sorted to FALSE. This is recommended.
* To return an approximate match, set is_sorted to TRUE. The nearest match (less than or equal to the search_key) is returned. To use this option to obtain accurate results, you must sort your data in ascending order. But, you could still find a value.
* If neither TRUE nor FALSE are selected, the function will default to TRUE.

## The #N/A error

#N/A indicates that a matching value can't be returned because no matches were found.

# Functions with multiple conditions

As you’ve been learning, conditional functions and formulas perform calculations according to specific conditions. In addition, functions including SUMIF** **and COUNTIF** only work in cases where there is one condition. However, if you have more than one condition, you would need to use the **SUMIFS** or the **COUNTIFS** function instead. These functions enable you to perform calculations if you have two or more conditions. In this reading, you will learn more about conditional functions and how to construct functions with multiple conditions by exploring their basic syntax and checking out an example. You will also be able to access resources for similar functions in Excel.

## SUMIF to SUMIFS

Previously, you learned that the **SUMIF** function adds values in a particular range based on a single condition. The basic syntax is **=SUMIF(range, criterion, sum_range)**.

The first range is where the function will search for the condition that you have set. The criterion is the condition you are applying and the sum_range is the range of cells that will be included in the calculation. For example, in an accounting spreadsheet, you could use SUMIF to calculate the total expenses for a specific category, like Travel expenses, within a given month.

Or, you could find the total sales for automotive fuel treatment products– in this table, the ProductA is high octane fuel and ProductB is standard octane. Table 1 includes columns for Product, Region, Quarter, and Sales.

![Spreadsheet showing sales of Product A and Product B by region, quarter and sales volume](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/aYBo3GwtQlqQ_nD-BYv_wQ_7136d536c2654707a21cd5b3afc60ae1_C5M4L1_R09_Functions-with-multiple-conditions.png?expiry=1750982400000&hmac=Z55v6Xo90zxdzBNS_1f0oL_rc2uZ5TikY4BSGZyo3Vk)

You could use SUMIF to calculate the total sales for Product A using a formula like this:

**=SUMIF(A2:A8, "ProductA", D2:D8)**

But, you could also build in multiple conditions by using the SUMIFS function. SUMIF and SUMIFS are very similar: They add up values in a range. But SUMIFS can include multiple conditions. This gives you more control over your summing criteria, which, in turn, allows  you to perform more complex data analysis easily.

The basic syntax is: **=SUMIFS(sum_range, criteria_range1, criterion1, [criteria_range2, criterion2, ...])**

The square brackets let you know that this is optional. The ellipsis at the end of the statement enables as many repetitions of these parameters as needed. For example, if you wanted to calculate the sum of sales for ProductA in the East district in the first quarter, you could create a SUMIFS statement with multiple conditions, like this:

**=SUMIFS(D2:D8, A2:A8, "ProductA", B2:B8, "East", C2:C8, "Q1")**

In this example, B2:B8 is the second criterion_range and East is the second condition. The third criterion_range is C2:C8 and the third condition is Q1. As long as you follow the basic syntax, you can add up to 127 conditions to a SUMIFS statement!

## COUNTIF to COUNTIFS

Just like the SUMIFS function, **COUNTIFS** allows you to create a COUNTIF function with multiple conditions. The definition for COUNTIF is a function that counts the number of cells in a range that meet a single condition. For example, using COUNTIF to track the number of days an temporary employee was absent in an attendance record.

The basic syntax is: **=COUNTIF(range, criterion)**

Just like SUMIF, you set the range and then the condition that needs to be met. For example, in Table 1, if you wanted to count the number of transactions for ProductA, you could use a COUNTIF function like this:

=COUNTIF(A2:A8, "ProductA")

**COUNTIFS** has the same basic syntax as SUMIFS:

**=COUNTIFS(criteria_range1, criterion1, [criteria_range2, criterion2, ...])**The criteria_range and criterion are in the same order, and you can add more conditions to the end of the function. So, if you wanted to find the number of sales transactions for ProductA in the East region in the first quarter, you could use COUNTIFS to apply those conditions, like this:

=COUNTIFS(A2:A8, "ProductA", B2:B8, "East", C2:C8, "Q2")

This enables you to find every instance where both of conditions (East and Q1) are true.

## SUMPRODUCT

**SUMPRODUCT** multiplies corresponding values in two or more arrays and returns the **sum of those products**. It acts as a **combined multiplication + addition** function.

=SUMPRODUCT(array1, array2, ...)

* Arrays must be the same size.
* Arrays are ranges like B3:B7 or C3:C7.
* It multiplies: B3*C3 + B4*C4 + B5*C5 + ...

## For more information

SUMIFS and COUNTIFS are just two examples of functions with multiple conditions. They help demonstrate how multiple conditions can be built into the basic syntax of a function. There are other functions with multiple conditions that you can use in your data analysis and many resources available online to help you get started:

*[**How to use the Excel IFS function**](https://exceljet.net/excel-functions/excel-ifs-function): This includes an explanation and example of the IFS function in Excel. It’s a great reference if you’re interested in learning more about IFS. The example is a useful way to understand this function and how it can be used.
*[**VLOOKUP in Excel with multiple criteria**](https://exceljet.net/formula/vlookup-with-multiple-criteria): Similar to the previous resource, this resource goes into more detail about how to use VLOOKUP with multiple criteria. Being able to apply VLOOKUP with multiple criteria will be a useful skill, so check out this resource for more guidance on how you can start using it on your own spreadsheet data.
*[**INDEX and MATCH in Excel with multiple criteria**](https://exceljet.net/formulas/index-and-match-with-multiple-criteria): This resource explains how to use the INDEX and MATCH functions with multiple criteria. It also includes an example, which demonstrates how these functions work with multiple criteria and actual data.
*[**Using IF with AND, OR, and NOT functions in Excel**](https://support.microsoft.com/en-us/office/using-if-with-and-or-and-not-functions-d895f58c-b36c-419e-b1f2-5c193a236d97): This resource combines IF with AND, OR, and NOT functions to create more complex functions. By combining these functions, you can perform your tasks more efficiently and cover more criteria at once.

# Elements of a pivot table

Previously, you learned that a pivot table is a tool used to sort, reorganize, group, count, total, or average data in spreadsheets. In this reading, you will learn more about the parts of a pivot table and how data analysts use them to summarize data and answer questions about their data.

**Pivot tables** make it possible to view data in multiple ways in order to identify insights and trends. They can help you quickly make sense of larger data sets by comparing metrics, performing calculations, and generating reports. They’re also useful for answering specific questions about your data.

A pivot table has four basic parts: rows, columns, values, and filters.

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/gzTugf-cSQa07oH_nDkGVw_f31e3c2b726e48d08a61f7d09d93c2f1_Screenshot-2021-07-12-1.20.23-PM-1-.png?expiry=1750982400000&hmac=uuFJaNTvj7hJn2K12BjoSOYVuNYC59Nc1cZ9j3SuWnY)

The **rows** of a pivot table organize and group data you select horizontally. For example, in the [Start working with pivot tables](https://www.coursera.org/learn/analyze-data/lecture/HCOme/start-working-with-pivot-tables) video, the Release Date values were used to create rows that grouped the data by year.

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/goLsfckvSv2C7H3JLwr94A_ab77d9d73f9b42809606e30d1ee1bbf1_Screenshot-2021-07-13-8.35.12-AM-1-.png?expiry=1750982400000&hmac=-xtMk7_f3RtXhKG8mj4HIUp26lekluwrqYBJKzSNtQE)

The **columns** organize and display values from your data vertically. Similar to rows, columns can be pulled directly from the data set or created using **values**. **Values** are used to calculate and count data. This is where you input the variables you want to measure. This is also how you create calculated fields in your pivot table. As a refresher, a **calculated field** is a new field within a pivot table that carries out certain calculations based on the values of other fields

In the previous movie data example, the **Values** editor created columns for the pivot table, including the SUM of Box Office Revenue, the AVERAGE of Box Office Revenue, and the COUNT of Box Office Revenue columns.

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/DF08HQOLQ7CdPB0Di3OwAg_a9918b5905c3410382e10332cbdd55f1_unnamed-16-.png?expiry=1750982400000&hmac=oqlXnLBY1LURgT06ejerbqtPJFoB1jq997a9vxUTnrw)

Finally, the **filters** section of a pivot table enables you to apply filters based on specific criteria—just like filters in regular spreadsheets! For example, a filter was added to the movie data pivot table so that it only included movies that generated less than $10 million in revenue.

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/vbTJ3Q9uRLe0yd0PbpS3vQ_02be9c5b3bfe43efb38cb631210536f1_Screenshot-2021-07-13-9.15.28-AM-1-.png?expiry=1750982400000&hmac=fzhq9VkP4MCKIzgebpbeZxJC2f3890wMuOR2CY3lPDc)

Being able to use all four parts of the pivot table editor will allow you to compare different metrics from your data and execute calculations, which will help you gain valuable insights.

## Using pivot tables for analysis

Pivot tables can be a useful tool for answering specific questions about a dataset so you can quickly share answers with stakeholders. For example, a data analyst working at a department store was asked to determine the total sales for each department and the number of products they each sold. They were also interested in knowing exactly which department generated the most revenue.

Instead of making changes to the original spreadsheet data, they used a pivot table to answer these questions and easily compare the sales revenue and number of products sold by each department.

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/-VkZUiJoSsmZGVIiaGrJ6Q_a44072b9be354ed0b516e725f29365f1_Screenshot-2021-07-13-11.04.58-AM-1-.png?expiry=1750982400000&hmac=Ai9E_83Ld6c3UreANmwEFZwf-7ZjBLQ5LlPPg_h2Av8)

They used the department as the rows for this pivot table to group and organize the rest of the sales data. Then, they input two Values as columns: the SUM of sales and a count of the products sold. They also sorted the data by the SUM of sales column in order to determine which department generated the most revenue.

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/OKSyrTgRQBiksq04EWAYmw_3f070771a65043dc8a466f2e8053d3f1_Screenshot-2021-07-13-10.45.55-AM-1-.png?expiry=1750982400000&hmac=1mSTWiJrxKOKkpkh9drITT4XpXj3fsV_PX-6t0T7b0U)

Now they know that the Toys department generated the most revenue!

# Use pivot tables in analysis

In this reading, you will learn how to create and use pivot tables for data analysis. You will also get some resources about pivot tables that you can save for your own reference when you start creating pivot tables yourself. **Pivot tables** are a spreadsheet tool that let you view data in multiple ways to find insights and trends.

Pivot tables allow you to make sense of large data sets by giving you tools to easily compare metrics, quickly perform calculations, and generate readable reports. You can create a pivot table to help you answer specific questions about your data. For example, if you were analyzing sales data, you could use pivot tables to answer questions like, “Which month had the most sales?” and “What products generated the most revenue this year?” When you need answers to questions about your data, pivot tables can help you cut through the clutter and focus on only the data you need.

## Create your pivot table

Before you can analyze data with pivot tables, you will need to create a pivot table with your data. The following includes the steps for creating a pivot table in Google Sheets, but most spreadsheet programs will have similar tools.

First, you will open the **Insert** menu from the toolbar; there will be an option for **Pivot table**.

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Vihv6AQURV6ob-gEFLVeYw_69da1b9f3d0b442d8db69afc0af1e6f1_Screenshot-2022-04-27-7.40.15-AM.png?expiry=1750982400000&hmac=ia5t4WsnDYC68uuJCXS3Kt2MdprDqaLfy5zZUKBiSgU)

This pop-up menu will appear:

![Screenshot of pop-up menu titled Create pivot table. ](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/O5Foq0BySvCRaKtActrwGg_9ff0b1fdbf8046398c7ee2d5abdc2044_Screenshot-2020-11-16-at-11.47.45-AM.png?expiry=1750982400000&hmac=dXBQEcsdAU-b8B8zAsrmwWpeiZd4BEV8pq-dllrKtcc)

There is an option to select New sheet or Existing sheet and a Create button.

Generally, you will want to create a new sheet for your pivot table to keep your raw data and your analysis separate. You can also store all of your calculations in one place for easy reference. Once you have created your pivot table, there will be a pivot table editor that you can access to the right of your data.

![Screenshot of pivot table editor. There are options to add rows, columns, values, and filters](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/nY3EyYVbTViNxMmFWy1YVQ_667552fecaa54c25b60ece296375708c_unnamed-2-.png?expiry=1750982400000&hmac=sMWofJtGXZXirhkcqotmNy_KHEW9NHGmX6k-4YG5Arc)

This is where you will be able to customize your pivot table, including what variables you want to include for your analysis.

## Using your pivot table for analysis

You can perform a wide range of analysis tasks with your pivot tables to quickly draw meaningful insights from your data, including performing calculations, sorting, and filtering your data. Below is a list of online resources that will help you learn about performing basic calculations in pivot tables as well as resources for learning about sorting and filtering data in your pivot tables.

### **Perform calculations**


| Microsoft Excel                                                                                                                                                                                                                                                                                                                                                  | Google Sheets                                                                                                                                                                                                                                                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**Calculate values in a pivot table**](https://support.microsoft.com/en-us/office/calculate-values-in-a-pivottable-11f41417-da80-435c-a5c6-b0185e59da77)**:** Microsoft Support’s introduction to calculations in Excel pivot tables. This is a useful starting point if you are learning how to perform calculations with pivot tables specifically in Excel. | [**Create and use pivot tables**](https://support.google.com/docs/answer/1272900?co=GENIE.Platform%3DDesktop&hl=en): This guide is focused on using pivot tables in Google Sheets and it provides instructions for creating calculated fields. This is a quick how-to guide you can save and reference as a quick reminder on how to add calculated fields. |
| [**Pivot table calculated field example**](https://exceljet.net/pivot-table/pivot-table-calculated-field-example)**:** This resource includes a detailed example of a pivot table being used for calculations. This step-by-step process demonstrates how calculated fields work, and provides you with some idea of how they can be used for analysis.          | [**All about calculated field in pivot tables**](https://infoinspired.com/google-docs/spreadsheet/all-about-calculated-field-in-pivot-table-in-google-sheets/)**: **This is a comprehensive guide to calculated fields for Google Sheets. If you are working with Sheets and are interested in learning more about pivot tables, this is a great resource.  |
| [**Pivot table calculated fields: step-by-step tutorial**](https://powerspreadsheets.com/pivottable-calculated-fields/)**:** This tutorial for creating your own calculated fields in pivot tables is a really useful resource to save and bookmark for when you start to apply calculated fields to your own spreadsheets.                                      | [**Pivot tables in Google Sheets**](https://www.benlcollins.com/spreadsheets/pivot-tables-google-sheets/): This beginner’s guide covers the basics of pivot tables and calculated fields in Google Sheets and uses examples and how-to videos to help demonstrate these concepts.                                                                          |

### **Sort your data**


| Microsoft Excel                                                                                                                                                                                                                                                                                                                                                                                 | Google Sheets                                                                                                                                                                                                                                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [**Sort data in a pivot table or PivotChart:**](https://support.microsoft.com/en-us/office/sort-data-in-a-pivottable-or-pivotchart-e41f7107-b92d-44ef-861f-24430830450a) This is a Microsoft Support how-to guide to sorting data in pivot tables. This is a useful reference if you are working with Excel and are interested in checking out how filtering will appear in Excel specifically. | [**Customize a pivot table**](https://support.google.com/docs/answer/7572895?co=GENIE.Platform%3DDesktop&hl=en): This guide from Google Support focuses on sorting pivot tables in Google Sheets. This is a useful, quick reference if you are working on sorting data in Sheets and need a step-by-step guide.                                                                          |
| [**Pivot tables- Sorting data**](https://www.tutorialspoint.com/excel_pivot_tables/excel_pivot_tables_sorting_data.htm)**:** This tutorial for sorting data in pivot tables includes an example with real data that demonstrates how sorting in Excel pivot tables works. This example is a great way to experience the entire process from start to finish.                                    | [**How to sort pivot table columns**](https://infoinspired.com/google-docs/spreadsheet/pivot-table-columns-in-custom-order-in-google-sheets/): This detailed guide uses real data to demonstrate how the sorting process for Google Sheet pivot tables will work. This is a great resource if you need a slightly more detailed guide with screenshots of the actual Sheets environment. |
| [**How to sort a pivot table by value**](https://exceljet.net/lessons/how-to-sort-a-pivot-table-by-value): This source uses an example to explain sorting by value in pivot tables. It includes a video, which is a useful guide if you need a demonstration of the process.                                                                                                                    | [**Pivot table ascending and descending order**](https://medium.com/actiondesk/pivot-table-ascending-descending-order-in-google-sheets-and-excel-1-minute-ultimate-beginners-8f9f4c560492)**:** This 1-minute beginner’s guide is a great way to brush up on sorting in pivot tables if you are interested in a quick refresher.                                                        |

### **Filter your data**


| Microsoft Excel                                                                                                                                                                                                                                                                                                                                                                   | Google Sheets                                                                                                                                                                                                                                                                                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**Filter data in a pivot table**](https://support.microsoft.com/en-us/office/filter-data-in-a-pivottable-cc1ed287-3a97-4e95-b377-ddfafe79fa8f)**: **This resource from the Microsoft Support page provides an explanation of filtering data in pivot tables in Excel. If you are working in Excel spreadsheets, this is a great resource to have bookmarked for quick reference. | [**Customize a pivot table**](https://support.google.com/docs/answer/7572895?co=GENIE.Platform%3DDesktop&hl=en): This is the Google Support page on filtering pivot table data. This is a useful resource if you are working with pivot tables in Google Sheets and need a quick resource to review the process.                                                                              |
| [**How to filter Excel pivot table data**](https://www.dummies.com/software/microsoft-office/excel/how-to-filter-excel-pivot-table-data/): This how-to guide for filtering data in pivot tables demonstrates the filtering process in an Excel spreadsheet with data and includes tips and reminders for when you start using these tools on your own.                            | [**Filter multiple values in pivot table**](https://infoinspired.com/google-docs/spreadsheet/filter-multiple-values-in-pivot-table-sheets/): This guide includes details about how to filter for multiple values in Google Sheet pivot tables. This resource expands some of the functionality that you have already learned and sets you up to create more complex filters in Google Sheets. |

### **Format your data**


| Microsoft Excel                                                                                                                                                                                                                                                                                                                                                                               | Google Sheets                                                                                                                                                                                                                                                        |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**Design the layout and format of a PivotTable**](https://support.microsoft.com/en-us/office/design-the-layout-and-format-of-a-pivottable-a9600265-95bf-4900-868e-641133c05a80 "Design the layout and format of a PivotTable"): This Microsoft Support article describes how to change the format of the PivotTable by applying a predefined style, banded rows, and conditional formatting. | [**Create and edit pivot tables**](https://support.google.com/a/users/answer/9308944#group_data_in_a_pivot_table "Create and edit pivot tables"): This Help Center article provides information about how to edit a pivot table to change its style, and group data. |

Pivot tables are a powerful tool that you can use to quickly perform calculations and gain meaningful insights into your data directly from the spreadsheet file you are working in! By using pivot table tools to calculate, sort, and filter your data, you can immediately make high-level observations about your data that you can share with stakeholders in reports.

But, like most tools we have covered in this course, the best way to learn is to practice. This was just a small taste of what you can do with pivot tables, but the more you work with pivot tables, the more you will discover.
