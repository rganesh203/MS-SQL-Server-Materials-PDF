#changemechangeme

1. not null 
2. primary
3. foreign 
4. unique 
5. check constraint
6. default constraint

To create tblPerson table, graphically, using SQL Server Management Studio
1. Right click on Tables folder in Object explorer window
2. Select New Table
3. Fill Column Name, Data Type and Allow Nulls, as shown below and save the table as tblPerson.



The following statement creates tblGender table, with ID and Gender columns. The following statement 
creates tblGender table, with ID and Gender columns. ID column, is the primary key column. The primary 
key is used to uniquely identify each row in a table. Primary key does not allow nulls.
Create Table tblGender
(ID int Not Null Primary Key,
Gender nvarchar(50))


In tblPerson table, GenderID is the foreign key referencing ID column in tblGender table. Foreign key 
references can be added graphically using SSMS or using a query.


To graphically add a foreign key reference
1. Right click tblPerson table and select Design
2. In the table design window, right click on GenderId column and select Relationships
3. In the Foreign Key Relationships window, click Add button
4. Now expand, in Tables and Column Specification row, by clicking the, + sign
5. Click on the elipses button, that is present in Tables and Column Specification row
6. From the Primary Key Table, dropdownlist, select tblGender
7. Click on the row below, and select ID column
8. From the column on the right hand side, select GenderId
9. Click OK and then click close.
10. Finally save the table.


#To add a foreign key reference using a query
Alter table tblPerson 
add constraint tblPerson_GenderId_FK FOREIGN KEY (GenderId) references tblGender(ID)


#The general formula is here
Alter table ForeignKeyTable add constraint ForeignKeyTable_ForiegnKeyColumn_FK 
FOREIGN KEY (ForiegnKeyColumn) references PrimaryKeyTable (PrimaryKeyColumn)



#sql having sub language
1.DDL(data definition language)
	create 
	drop
	Alter
	truncate
2.DQL (data query language)
	Select
3.DML (data manipulation language)
	insert 
	update
	delete
	lock
	call
	explain plan
4. DCL(data control language)
	grant revoke

5. TCl(transct control language)
	commit
	rollback
	save point
	
#If you are someone who is preparing for Interviews in a Data Analytics role. These scenario-based Sql 
#questions will help you to crack! 

1. Write an sql query to calculate the cumulative sum of sales revenue for each day.
2. Write a query to retrieve the orders placed in the last quarter.
3. Write a query to retrieve the employees who were hired in the last month.
4. Write a query to retrieve all customers who have not placed any orders.
5. Find the top 5 customers who spent the most on purchases.
6. Find the customers who have made purchases in consecutive months.
7. Write a Sql query Retrieve the orders that were placed in the first quarter of the year.
8. List the customers who have made purchases in both the current and previous year.
9. Find the orders that were placed on weekends.
10. List the customers who have made purchases in every month of the year.
11. Write an SQL query to retrieve the employees with salaries in the top 10% range.
12. Write an SQL query to retrieve the employees with salaries in the bottom 25% range.
13. Given a table with sales information and region data, how would you identify the top-performing 
	sales regions based on total revenue using window functions.
14.  How would you calculate each departments average salary and display each employees salary 
	alongside the department average using window functions.
15. Calculate the running total of visitors for each day, showing the cumulative sum of visitors up
	to that day. However, there's a condition: you only want to include the visitors if the daily count 
	exceeds or exceeds 100. If the daily count is less than 100, you want to exclude that day's visitors 
	from the running total.
16. List the customers who have made purchases in all product categories.
17. Write a query to calculate the average salary for each department.
18. Write an sql query to find the Average time taken for a customer to Repeat a Purchase.
19. Find Employees who are earning more salaries than their Managers.
20. Find users who purchased on Multiple Days.
21. Write a SQL query to find the total sales amount for each month of a given year.
22. Write an SQL query to find the number of events held on each date and the percentage of capacity 
	utilized for each event.
23. Write a SQL query to find the number of messages sent by each user and received by each user
24. Find orders that are placed on weekdays.
25. Find out employees have salaries greater than the average salary of respective departments.
26. Write a SQL query to find the most active user based on the number of actions performed within the 
	last 24 hours.
27. Write an SQL query to find the average transaction amount for each user in the last 30 days.
28. Find customers who have purchased products in all product categories.
29. Write a query to find the time difference (in minutes) between each order and the next order made 
	by the same customer.
30. Write a Single SQL statement to concatenate all the customer names into the following single 
	semicolon-separated string.
31. Write a query to find the number of transactions made by each user in the last 7 days.
32. Write an SQL query to find the date of the first and last transaction for each customer.
33. Give the difference in the number of days between the most recent transaction and the previous to 
	the most recent transaction for each customer.
34. Find the Top 5 customers based on spending growth
	WITH CustomerSpending AS (
		SELECT
			customer_id,
			SUM(amount) AS total_spending
		FROM
			transactions
		WHERE
			transaction_date >= 'start_date' AND transaction_date <= 'end_date'
		GROUP BY
			customer_id
	),
	CustomerSpendingGrowth AS (
		SELECT
			cs1.customer_id,
			cs1.total_spending AS spending_start,
			cs2.total_spending AS spending_end,
			(cs2.total_spending - cs1.total_spending) AS spending_growth
		FROM
			CustomerSpending cs1
		JOIN
			CustomerSpending cs2 ON cs1.customer_id = cs2.customer_id
		WHERE
			cs1.total_spending < cs2.total_spending
	)
	SELECT TOP 5
		csg.customer_id,
		cspg.spending_start,
		cspg.spending_end,
		cspg.spending_growth
	FROM
		CustomerSpendingGrowth cspg
	JOIN
		customers c ON cspg.customer_id = c.customer_id
	ORDER BY
		cspg.spending_growth DESC;

35. Find Employees who are earning salaries more than their Managers
	SELECT e.EmployeeName, e.Salary, m.EmployeeName AS ManagerName, m.Salary AS ManagerSalary
	FROM Employees e
	JOIN Employees m ON e.ManagerID = m.EmployeeID
	WHERE e.Salary > m.Salary;

36. Explain order of execution of SQL.
37. What is difference between where and having?
38. What is the use of group by?
39. Explain all types of joins in SQL?
40. What are triggers in SQL?
41. What is stored procedure in SQL
42. Explain all types of window functions? (Mainly rank, row_num, dense_rank, lead & lag)
43. What is difference between Delete and Truncate?
44. What is difference between DML, DDL and DCL?
45. What are aggregate function and when do we use them? explain with few example.
46. Which is faster between CTE and Subquery?
47. What are constraints and types of Constraints?
48. Types of Keys?
49. Different types of Operators ?
50. Difference between Group By and Where?
51. What are Views?
52. What are different types of constraints?
53. What is difference between varchar and nvarchar?
54. Similar for char and nchar?
55. What are index and their types?
56. What is an index? Explain its different types.
57. List the different types of relationships in SQL.
58. Differentiate between UNION and UNION ALL.
59. How many types of clauses in SQL ?
60. What is the difference between UNION and UNION ALL in SQL?
61. What are the various types of relationships in SQL?
62. Difference between Primary Key and Secondary Key?
63. What is the difference between where and having?
64. Find the second highest salary of an employee?
65. Write retention query in SQL?
66. Write year-on-year growth in SQL?
67. Write a query for cummulative sum in SQL?
68. Difference between Function and Store procedure ?
69. Do we use variable in views?
70. What are the limitations of views?


