--DATA CLEANING
select * from sales

--Insert a duplicate row for a particular ID
/*INSERT INTO CUSTOMERS(ID,NAME,AGE,ADDRESS,SALARY,role)
SELECT ID,NAME,AGE,ADDRESS,SALARY,role
FROM CUSTOMERS
WHERE ID = 1;*/

--checking duplicates 
SELECT amount,
     COUNT(amount) as coun
FROM sales
GROUP BY amount
HAVING(count(amount) > 1)


--removing duplicates
WITH CTE AS (
    SELECT amount, ROW_NUMBER() OVER (PARTITION BY amount order by amount desc) AS rn
    FROM sales
)
DELETE FROM CTE
WHERE rn > 1;

begin transaction;
save tran t1;

WITH CTE AS (
    SELECT amount, ROW_NUMBER() OVER (PARTITION BY amount order by [created] desc) AS rn
    FROM sales
) DELETE FROM CTE
WHERE rn > 1;


--deleting null values
select * from CUSTOMERS
begin tran
save tran c1
create table CUSTOMTABLE (ID INT,NAME VARCHAR(29),AGE INT,ADDRESS VARCHAR(50),SALARY INT,ROLE VARCHAR(20));
INSERT INTO CUSTOMTABLE  SELECT * FROM CUSTOMERS;

DELETE
FROM CUSTOMERS
WHERE role IS NULL

-- updating null values
SELECT *
FROM CUSTOMERS
WHERE role IS NULL

UPDATE CUSTOMERS
SET role = 'Other'
WHERE role IS NULL

--updating cases
UPDATE CUSTOMERS
SET ADDRESS = upper(ADDRESS)

--partition by clause

SELECT
    ID,
   NAME,
    role,
    SALARY,
    ROW_NUMBER() OVER (PARTITION BY ID ORDER BY Salary DESC) AS EMPRank
FROM
    CUSTOMERS;

select * from role;
alter table CUSTOMERS add depid varchar(20);
update CUSTOMERS set depid = (select department from role where CUSTOMERS.ID=role.id)

-- Use PARTITION BY with OVER to generate row numbers within each department
SELECT
    ID,
   NAME,
    role,
    SALARY,
    ROW_NUMBER() OVER (PARTITION BY depid ORDER BY SALARY DESC) AS DepartmentRank,
    RANK() OVER (PARTITION BY depid ORDER BY SALARY DESC) AS DepartmentRankWithTies,
    DENSE_RANK() OVER (PARTITION BY depid ORDER BY SALARY DESC) AS DenseDepartmentRank
FROM
    CUSTOMERS;