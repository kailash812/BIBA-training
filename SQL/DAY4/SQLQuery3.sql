select * from CUSTOMERS;

create table role(id int,job varchar(20),department varchar(40));

insert into role values(1,'developer','IT'),
(3,'designer','creative'),
(6,'junior developer','IT'),
(4,'manager','HR'),
(5,'technician','IT');
select * from role;
insert into CUSTOMERS values(8,'flinn',30,null,null);

--innerjoin
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS inner join role on CUSTOMERS.ID=role.id;

--leftjoin
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS left join role on CUSTOMERS.ID=role.id;

insert into role values(8,'CEO','management');

--right join
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS right join role on CUSTOMERS.ID=role.id;

--fullouterjoin
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS full outer join role on CUSTOMERS.ID=role.id;

--crossjoin
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS cross join role ;

--string functions
SELECT ascii ( 'AB')
SELECT char (66)
SELECT len ( 'WIDESKILLS')
SELECT lower ( 'JOHN' )
SELECT REPLACE( 'country','y', 'ies' );
SELECT reverse ( 'PATH')
SELECT str (134.563, 5, 2)
SELECT upper ( 'Peter')

--datefunction
SELECT dateadd (mm, 2, '2010-02-03')
SELECT dateadd (dd, 2, '2010-02-03')
SELECT dateadd (yy, 5, '2010-02-03')
SELECT getdate ()
SELECT datepart (mm, '2008-04-01')
SELECT day ( '2010-03-21')
SELECT month ('2007-04-03')
SELECT year ( '2011-04-17')

SELECT datediff ( day, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'))
SELECT datediff ( month, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'))
SELECT datediff ( year, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'))

--mathematical function
SELECT abs (-77)
SELECT sin(1.5)
SELECT ceiling (14.45)
SELECT exp (4.5)
SELECT floor (15.55)
SELECT log (5.4)

create table demo8(id int,name varchar(20),price float);
insert into demo8 values(1,'raj',987.12),(2,'dan',123.456),
(3,'stan',333.89),
(4,'dean',56.4),
(5,'steve',1233.6),
(6,'evan',783.9),(7,'mark',1233.6);

select * from demo8;
select id, 'rounded Rate'=ROUND(price,0) from demo8;

--Rankfunctions
--row_number()
select id,name,price, ROW_NUMBER() OVER ( ORDER BY price desc) as rank from demo8;
--rank()
select id,name,price,rank() over(order by price desc) as rank from demo8;
--denserank()
select id,name,price,dense_rank() over(order by price desc) as rank from demo8;
--ntile()
select id,name,price,ntile(4) over(order by price desc) as rank from demo8 where price>500;

--systemfunctions
select HOST_ID() as 'HOSTID';
SELECT HOST_NAME() as 'HOSTNAME';
SELECT suser_id( ) as SID;
SELECT user_id () as USERID;
SELECT db_name() as Databasename;

--aggegate functions
select 'Average Rate' =avg(price) from demo8;
select 'unique Rate' =count(distinct price) from demo8;
select 'count'=count(price) from demo8;
select 'min'=min(price) from demo8;
select 'max'=max(price) from demo8;
select 'sum'=sum(price) from demo8;

--grouping data
CREATE TABLE sales (
    product_id INT,
    category VARCHAR(50),
    sale_date DATE,
    amount DECIMAL(10, 2)
);
INSERT INTO sales (product_id, category, sale_date, amount)
VALUES
    (1, 'Electronics', '2023-01-01', 500.00),
    (2, 'Clothing', '2023-01-01', 150.00),
    (1, 'Electronics', '2023-01-02', 300.00),
    (2, 'Clothing', '2023-01-02', 200.00),
    (1, 'Electronics', '2023-01-03', 450.00),
    (2, 'Clothing', '2023-01-03', 100.00);
select * from sales;
select category,sum(amount) as total_amount from sales group by category;

--equi join
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS join role on CUSTOMERS.ID=role.id;

--non equi join
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS join role on CUSTOMERS.ID<role.id;
select * from role;
select * from CUSTOMERS;
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS join role on CUSTOMERS.ID>role.id;
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS join role on CUSTOMERS.ID<=role.id;
select CUSTOMERS.ID,CUSTOMERS.NAME,CUSTOMERS.SALARY,role.job,role.department
from CUSTOMERS join role on CUSTOMERS.ID>=role.id;
