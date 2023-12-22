create database ASSESSMENT
use ASSESSMENT
--creating two tables product and department

CREATE TABLE PRODUCT(product_id int,product_name varchar(20),price int)
alter table PRODUCT add dept_id int;
select * from PRODUCT;
insert into PRODUCT values(1,'detergent',250,101),
(2,'soap',50,101),
(3,'dhal',500,201),
(4,'rice',1000,201),
(5,'carrot',45,201),
(6,'shampoo',200,101),
(7,'TV',7000,301),
(8,'MOBILE',3000,301),
(9,'bulb',350,401),
(10,'air conditioner',4000,301);
insert into PRODUCT values(11,'oil',400,null)
CREATE TABLE Department (
    DepartmentID INT,
    DepartmentName VARCHAR(50) NOT NULL
);
--inserting values into the table
INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
    (101, 'washing'),
    (201, 'grocery'),
    (301, 'Home Appliances'),
	(401,'electronics');
insert into Department values(501,'stationary')
/*1.Querying Data by Using Joins and Subqueries
 
2.Manipulate data by using sql commands using groupby and having clause.*/

--1.querying using joins:

--using inner join
select p.product_id,p.product_name,p.price,p.dept_id,d.DepartmentName 
from PRODUCT p join Department d on p.dept_id=d.DepartmentID;
--using left join
select p.product_id,p.product_name,p.price,p.dept_id,d.DepartmentName 
from PRODUCT p left join Department d on p.dept_id=d.DepartmentID;
--right join
select p.product_id,p.product_name,p.price,p.dept_id,d.DepartmentName 
from PRODUCT p right join Department d on p.dept_id=d.DepartmentID;

--subqueries to find product in washing departent
select p.product_id,p.product_name,p.price from PRODUCT p
where dept_id in (select DepartmentID from Department where DepartmentName='washing');


--using both join and sub query
SELECT
    p.product_id,p.product_name,p.price,d.DepartmentName
FROM
    PRODUCT p JOIN Department d ON p.dept_id = d.DepartmentID
WHERE
    p.price = (SELECT MAX(price) FROM PRODUCT);


--2.Manipulate data by using sql commands using groupby and having clause

--using group by to find avreage price of each department
select d.DepartmentID,d.DepartmentName,avg(p.price) as averageprice
from Department d join PRODUCT p on d.DepartmentID=p.dept_id
group by d.DepartmentID,d.DepartmentName;

--using having to find department with more than 2 products
select d.DepartmentID,d.DepartmentName,count(p.dept_id) as count
from Department d join PRODUCT p on d.DepartmentID=p.dept_id
group by d.DepartmentID,d.DepartmentName having count(p.dept_id)>2;

--dml commands
select * from PRODUCT;
select * from Department;
delete from PRODUCT where dept_id is null;