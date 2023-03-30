# Pewlett-Hackard-Analysis
# Module_7v1

Instructions
Deliverable 1: 

The Number of Retiring Employees by Title (50 points)
Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions—you’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. Finally, because we want to include only current employees in our analysis, be sure to exclude those employees who have already left the company.
Create a SQL file in the Queries folder of your Pewlett-Hackard-Analysis GitHub folder, and name it Employee_Database_challenge.sql.

create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. 

Follow the instructions below to complete Deliverable 1.
1.	Retrieve the emp_no, first_name, and last_name columns from the Employees table.

2.	Retrieve the title, from_date, and to_date columns from the Titles table.

3.	Create a new table using the INTO clause.


4.	Join both tables on the primary key.

5.	Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.

 ![image](https://user-images.githubusercontent.com/117233641/228740040-71718828-e5ff-4122-a3be-7245b88855c2.png)


6.	Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

 ![image](https://user-images.githubusercontent.com/117233641/228740095-16911b52-4c8e-48b7-8986-61065fde18c4.png)


8.	Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.

9.	Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.


    o	These columns will be in the new table that will hold the most recent title of each employee.

    o	Exported the “Current Titles.csv “and saved to Data folder in the Pewlett-Hackard-Analysis folder.

![image](https://user-images.githubusercontent.com/117233641/228740217-b6d20d14-15cd-4c95-bf7d-f6e29722ed93.png)

 
10.	Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.

11.	Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.


12.	Create a Unique Titles table using the INTO clause.

13.	Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.


14.	Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

![image](https://user-images.githubusercontent.com/117233641/228740265-f0c3aec9-6f5d-45a9-af89-bffd6b927785.png)

 

16.	Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.

17.	First, retrieve the number of titles from the Unique Titles table.
 
![image](https://user-images.githubusercontent.com/117233641/228740953-ecda084e-4400-4807-b3cb-a955202c4add.png)


18.	Then, create a Retiring Titles table to hold the required information.

19.	Group the table by title, then sort the count column in descending order.

![image](https://user-images.githubusercontent.com/117233641/228741006-a78789f8-d5ab-43cc-b476-8dde1ea64de5.png)


20.	Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

![image](https://user-images.githubusercontent.com/117233641/228741042-b3b796e9-96cd-4276-ad35-14ac176ca44c.png)
 
22.	Save your Employee_Database_challenge.sql file in your Queries folder in the Pewlett-Hackard folder.

##Deliverable 2: The Employees Eligible for the Mentorship Program 

In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

1.	Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.

2.	Retrieve the from_date and to_date columns from the Department Employee table.


3.	Retrieve the title column from the Titles table.
 
 ![image](https://user-images.githubusercontent.com/117233641/228741145-0a1d29a7-b943-4d57-b4b6-81ccd6399509.png)

4.	Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.

5.	Create a new table using the INTO clause.

![image](https://user-images.githubusercontent.com/117233641/228741201-4127f4f5-f94c-4c0e-bfe4-979ec7568c84.png)

 
6.	Join the Employees and the Department Employee tables on the primary key.

7.	Join the Employees and the Titles tables on the primary key.


8.	Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.

9.	Order the table by the employee number.
 
 ![image](https://user-images.githubusercontent.com/117233641/228741253-b3656010-0bc7-40ac-a928-9b0e28d5a548.png)


10.	Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

 ![image](https://user-images.githubusercontent.com/117233641/228741288-a0e05df4-b7bf-42e7-893e-f1d91aa5cdf3.png)


Deliverable 3: A written report on the employee database analysis (20 points)

For this part of the Challenge, you’ll write a report to help the manager prepare for the upcoming "silver tsunami."

The analysis should contain the following:

##Overview of the analysis: Explain the purpose of this analysis.
(As captured from Data Bootcamp Module 7) 

I am the assigned Data Analyst assisting Bobby an HR analyst whose task is to perform employee research. As the Data Analyst, I will be applying my knowledge of DataFrames and tabular data, I will create entity relationship diagrams (ERDs), import data into a database, troubleshoot common errors, and create queries that use data to answer questions.

By the end of this module, as assigned Data Analyst, I will complete the following::

•	Design an ERD that will apply to the data.

•	Create and use a SQL database.

•	Import and export large CSV datasets into pgAdmin.

•	Practice using different joins to create new tables in pgAdmin.

•	Write basic- to intermediate-level SQL statements.



##Purpose 
To determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. In addition, I will need to determine the current number of employees born between January 1, 1952 and December 31, 1955. This will help to understand how many positions will need to be filled. All employees born within that timeframe are considered for a mentorship program, so employees who are close to retirement age can help prepare other employees to fill their positions.

##Results:

 Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
•	At the time of this analysis there are currently 300,024 employees in the company. (As per the deliverable “employees.cvs” )

•	There are 1549 unique titles  
 ![image](https://user-images.githubusercontent.com/117233641/228741552-9ba84e89-1579-4792-ae55-fbb8786f8acc.png)


•	Where a large majority of the retiring staff are members of Senior Management (As per the deliverable “retiring_titles.cvs”
 
 ![image](https://user-images.githubusercontent.com/117233641/228741576-5f372f42-2004-4023-9968-f90952ccf190.png)


•	Number of eligible employees 

![image](https://user-images.githubusercontent.com/117233641/228741614-e85e35d0-ebe3-40ac-aec0-f46765bfe2e4.png)

 

Created an initial map of the database, using an online tool called Quick Database Diagrams ("Quick DBD" for short). This map will illustrate each table in the database and the flow of data from one table to another. For this example, as Data Analyst, I have chosen to look at the “emp_no” as the primary key noted in most of the data sets (csv files).
 
 ![image](https://user-images.githubusercontent.com/117233641/228741656-4c3b9826-8343-49c3-8f43-7924382e5955.png)

•	
##Summary:

 Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
 

    o	How many roles will need to be filled as the "silver tsunami" begins to make an impact?

The Pewlett-Hackard analysis summary
72 458 roles will need to be filled as the "silver tsunami" begins to make an impact for next 3 years. But per year it will be as below on the screen:

 ![image](https://user-images.githubusercontent.com/117233641/228741716-28f849df-24fb-42ba-8473-ddd297cf641c.png)


•	Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Additional analysis shows that qualified employees are not enough per the departments to mentor the next generation of Pewlett Hackard employees.

•	 Additional analysis shows that qualified employees are not enough per the departments to mentor the next generation of Pewlett Hackard employees.
 
 ![image](https://user-images.githubusercontent.com/117233641/228741791-426491a8-3b1c-423f-9705-f2ae80a0ce23.png)

