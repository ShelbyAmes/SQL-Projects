USE Charity_Database
GO



/*
c). Write SQL Code to create EMPLOYEE and JOB tables structures with the necessary constraints 
(Note: you are told to create table structures only and not inserting the data). Your code should include foreign 
key constraint such that if a row is deleted in the JOB table, a matching row in the EMPLOYEE table should also be 
automatically deleted. NOTE: You are NOT asked to create any database. Just write code to create table structure only. 
*/

DROP TABLE IF EXISTS JOB
CREATE TABLE JOB(job_code INT PRIMARY KEY,
job_type VARCHAR(60))

DROP TABLE IF EXISTS EMPLOYEE
CREATE TABLE EMPLOYEE(emp_id INT PRIMARY KEY,
Emp_LName VARCHAR(60),
job_code INT)

ALTER TABLE EMPLOYEE
ADD CONSTRAINT fk_emp_job_id
FOREIGN KEY (job_code) REFERENCES JOB (job_code)

INSERT INTO JOB (job_code, job_type)
VALUES
    (1, 'Clerical'),
    (2, 'Technical'),
    (3, 'Managerial');

INSERT INTO EMPLOYEE(emp_id,Emp_LName,job_code) VALUES
 (10, 'Adams',2)
,(11, 'Patel',1)
,(12, 'Kim',1)
,(13, 'Lou', 3)
,(14, 'Wang',2)

SELECT * FROM EMPLOYEE


/*
d). Write SQL code to insert into JOB table the sample data provided (Note: You are told to do this for JOB table ONLY).  
Again, you are not asked to create any database. Just write INSERT statements ONY.
*/


SELECT TOP 10 * FROM Locations

SELECT TOP 10 * FROM WorkType

SELECT TOP 10 * FROM Charities
WHERE charity_mission LIKE '%AIDS%'

SELECT TOP 10 * FROM CharityPerformance

SELECT TOP 10 * FROM Categories

SELECT TOP 10 * FROM Subcategories

SELECT TOP 10 * FROM AgeGroups

--build a temp table with everything connected
DROP TABLE IF EXISTS #temp_joinall
SELECT *
INTO #joinall
FROM Locations AS l 
JOIN Charities AS c ON l.location_id = c.charity_id
JOIN WorkType AS wt ON wt.work_type_id = c.work_type_id
JOIN CharityPerformance AS cp ON cp.charity_id = c.charity_id 
JOIN AgeGroups AS ag ON ag.age_group_id = c.age_group_id
JOIN Subcategories AS sc ON sc.sub_category_id = c.sub_category_id
JOIN Categories AS cat ON cat.category_id = sc.category_id


/*
Question 4:
For charities located in cities with at least 20 charities, a data entry error was made for charities which contain the 
word either "Community" or "Communities" in the charity name, regarding the total contributions received. A report was 
generated showing the city name, charity name, and charity rank in its city in terms of the total contributions received 
(charities with higher total contributions received being ranked higher). 

The data entry error led to a charity with the word either "Community" or "Communities" in the charity name being swapped 
in ranking with the charity immediately above it, unless the charity containing the word either "Community" or "Communities" 
in the charity name was already in the first position (i.e., if it is in the first position, then it is properly ranked).

Write a SQL query that will correct the swapped rankings as stated above. (Note: you are required to swap only the rankings 
after you have derived them, and NOT to make any changes to the data in the database). (Hint: there are only 9 cities with at 
least 20 charities in the database). (Hint: you may find it useful to use LEAD() Window function at some point in your query. 
LEAD() works the same way as LAG() but shifts values in the opposite direction).

Sample output (first 10 rows only) is shown below for Boston. Notice that for the Community Catalyst charity, 
the original rank is 4, which that of City Year charity is 3. However, with the corrected ranking, the Community Catalyst 
charity has a rank of 3, while City Year charity has a rank of 4.
*/

WITH cte_ranked_char AS (
SELECT city, c.charity_name, 
RANK() OVER (PARTITION BY l.city ORDER BY cp.total_contributions DESC) AS rank
FROM Locations AS l
JOIN Charities AS c ON l.location_id = c.location_id
JOIN CharityPerformance AS cp ON cp.charity_id = c.charity_id
WHERE l.city IN (SELECT city FROM #temp_num_char)
),
cte_corrected_ranks AS (
SELECT city, charity_name, rank,
LEAD(rank) OVER (PARTITION BY city ORDER BY rank) AS next_rank,
LEAD(charity_name) OVER (PARTITION BY city ORDER BY rank) AS next_charity_name
FROM cte_ranked_char
),
cte_adjust_com AS (
SELECT city, charity_name, rank,
CASE
WHEN charity_name LIKE '%Community%' OR charity_name LIKE '%Communities%' THEN 
    CASE
    WHEN rank > 1 THEN rank - 1
    ELSE rank
    END
    ELSE rank
END AS corrected_rank,  next_charity_name, next_rank
FROM cte_corrected_ranks
)
SELECT city, charity_name, rank,
CASE
WHEN next_charity_name LIKE '%Community%' OR next_charity_name LIKE '%Communities%' THEN corrected_rank + 1 
ELSE corrected_rank
END AS final_rank
FROM cte_adjust_com
ORDER BY city, rank;




DROP TABLE IF EXISTS #num_char
GO
SELECT city, COUNT(c.charity_id) AS num_charity
INTO #num_char
FROM Locations AS l 
JOIN Charities AS c ON l.location_id = c.charity_id
JOIN WorkType AS wt ON wt.work_type_id = c.work_type_id
JOIN CharityPerformance AS cp ON cp.charity_id = c.charity_id 
JOIN AgeGroups AS ag ON ag.age_group_id = c.age_group_id
JOIN Subcategories AS sc ON sc.sub_category_id = c.sub_category_id
JOIN Categories AS cat ON cat.category_id = sc.category_id
GROUP BY city


SELECT * FROM #num_char
WHERE num_charity >= 20

GO
WITH cte_num AS (
    SELECT COUNT()
)




/*
Question 5
Write a query to return charity name, focus_area, work type, overall score and total contributions 
where the following conditions are met (note: focus_area  is a derived attribute and doesn't exist in the database):

1). The charity's focus is on Education only in the Education and Health category; the charity's overall score rating 
is at least 90.00 and total contributions of at least 5 million.

Combine the result set above with the following into your final output:

2). The charity's focus is on Environment only in the Animals and Environment category; the charity's overall score rating
is at least 95.00 and total contributions of at least 1 million.

Format total contributions as currency as follows: FORMAT(totat_contributions, 'c', 'en-us') and provide an alias for the output.

The excerpt below shows sample output:
*/


SELECT c.charity_name, wt.work_type, 'Education' AS focus_area, cp.overall_score, 
FORMAT(cp.total_contributions, 'c', 'en-us') AS total_contributions
FROM Charities AS c
JOIN WorkType AS wt ON wt.work_type_id = c.work_type_id
JOIN CharityPerformance AS cp ON cp.charity_id = c.charity_id
JOIN Subcategories AS sc ON sc.sub_category_id = c.sub_category_id
JOIN Categories AS cat ON cat.category_id = sc.category_id
WHERE cat.category_name = 'Health and Education' 
AND sc.sub_category = 'Education'
AND overall_score >= 95.00
AND cp.total_contributions >= 5000000
UNION 
(SELECT c.charity_name, wt.work_type, 'Environment' AS focus_area, cp.overall_score, 
FORMAT(cp.total_contributions, 'c', 'en-us') AS total_contributions
FROM Charities AS c
JOIN WorkType AS wt ON wt.work_type_id = c.work_type_id
JOIN CharityPerformance AS cp ON cp.charity_id = c.charity_id
JOIN Subcategories AS sc ON sc.sub_category_id = c.sub_category_id
JOIN Categories AS cat ON cat.category_id = sc.category_id
WHERE cat.category_name = 'Animals and Environment' 
AND sc.sub_category = 'Environment'
AND overall_score >= 95.00
AND cp.total_contributions >= 1000000)
ORDER BY charity_name

/*
Question 6:
Write a query to return work type, charity name, city, total contributions, and rank. 
Note: there should be no gaps in the ranking. Please limit the output to top 5 charities only for each work type. 
 Note: there should be 172 rows in the output.  The Excerpt below shows sample output. (5 marks)
*/

SELECT TOP 10 work_type, charity_name, city, total_contributions,
RANK() OVER (ORDER BY total_contributions DESC) AS rank_contributions
FROM Locations AS l 
JOIN Charities AS c ON l.location_id = c.charity_id
JOIN WorkType AS wt ON wt.work_type_id = c.work_type_id
JOIN CharityPerformance AS cp ON cp.charity_id = c.charity_id 
JOIN AgeGroups AS ag ON ag.age_group_id = c.age_group_id
JOIN Subcategories AS sc ON sc.sub_category_id = c.sub_category_id
JOIN Categories AS cat ON cat.category_id = sc.category_id
GROUP BY work_type

GO
WITH cte_ranked_charities AS (
SELECT wt.work_type, c.charity_name, l.city, cp.total_contributions,
DENSE_RANK() OVER (PARTITION BY wt.work_type ORDER BY cp.total_contributions DESC) AS rank_contributions
FROM Locations AS l 
JOIN Charities AS c ON l.location_id = c.location_id
JOIN WorkType AS wt ON wt.work_type_id = c.work_type_id
JOIN CharityPerformance AS cp ON cp.charity_id = c.charity_id 
JOIN AgeGroups AS ag ON ag.age_group_id = c.age_group_id
JOIN Subcategories AS sc ON sc.sub_category_id = c.sub_category_id
JOIN Categories AS cat ON cat.category_id = sc.category_id
)
SELECT work_type, charity_name, city, total_contributions, rank_contributions
FROM cte_ranked_charities
WHERE rank_contributions <= 5
ORDER BY work_type, rank_contributions;

/*
Question 7:
Write a query to return city, number of charities, total funds, average funds per charity, 
and the city's percentage share of total funds.  Average funds and percent share should be displayed 
rounded to 2 decimal places. Display the output with the results grouped into 100 buckets sorted by 
descending order of total funds, and then by descending order of the number of charities. Limit the output 
to the top 2 percentiles (i.e., top 2 buckets) ONLY. Note: there should be a total of 12 rows. 
*/

DROP TABLE IF EXISTS #temp_tot_funds
SELECT city, COUNT(c.charity_id) AS num_charity,
SUM(total_contributions) AS tot_funds
INTO #temp_tot_funds
FROM Locations AS l 
JOIN Charities AS c ON l.location_id = c.location_id
JOIN WorkType AS wt ON wt.work_type_id = c.work_type_id
JOIN CharityPerformance AS cp ON cp.charity_id = c.charity_id 
JOIN AgeGroups AS ag ON ag.age_group_id = c.age_group_id
JOIN Subcategories AS sc ON sc.sub_category_id = c.sub_category_id
JOIN Categories AS cat ON cat.category_id = sc.category_id
GROUP BY city

DROP TABLE IF EXISTS #temp_avg_fund
SELECT *,CAST(tot_funds / num_charity AS NUMERIC(15,2)) AS avg_fund
INTO #temp_avg_fund
FROM #temp_tot_funds

GO
WITH cte_bucket AS (
SELECT city,num_charity,tot_funds, avg_fund,
CAST(100.0 * tot_funds / SUM(tot_funds) OVER () AS NUMERIC(5,2)) AS pct_share,
NTILE(100) OVER (ORDER BY tot_funds DESC) AS bucket
    FROM #temp_avg_fund
)
SELECT *
FROM cte_bucket
WHERE bucket <= 2
ORDER BY tot_funds DESC, num_charity DESC;


