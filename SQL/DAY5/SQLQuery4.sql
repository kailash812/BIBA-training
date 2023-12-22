--sub query

select NAME,SALARY from CUSTOMERS where SALARY>(select avg(SALARY) from CUSTOMERS);

select * from CUSTOMERS;
select * from role;

--viewing employee from one department by refering another table

select Name,ADDRESS,AGE from customers
where ID in (select ID from role where department='IT');

alter table CUSTOMERS add role varchar(40);

-- adding a new column from another table using sub query
update CUSTOMERS set role = (select job from role where CUSTOMERS.ID=role.id);


-- EXISTS OPERATOR

select name from CUSTOMERS 
where exists
(select id from role where CUSTOMERS.ID=role.id and department='IT');

select*from sales;

select*from persons;

insert into sales values(3,'travel',CURRENT_TIMESTAMP,1000),
(3,'travel',CURRENT_TIMESTAMP,1200),
(4,'grocery',CURRENT_TIMESTAMP,700),
(3,'clothing',CURRENT_TIMESTAMP,1000);
alter table persons add productid int;
insert into persons(id,name) (select id,NAME from CUSTOMERS);
update persons set age = 22;

-- ANY OPERATOR
select name from persons where id=any
(select id from sales where category='travel');

select name from persons where id=any
(select id from sales where amount>=500);


select*from sales;
select*from persons;

--ALL operator
select all name from persons where ID>4;

select name from persons where id=all
(select id from sales where amount>100);


select * from CUSTOMERS;
select* from role;
update CUSTOMERS set SALARY=30000 where ID=8;


--NESTED SUBQUERY

--viewing employee from one department by refering another table whose id is greater than 2

select Name,ADDRESS,AGE from customers
where ID in (select ID from role where department='IT' and id in (select id from CUSTOMERS where id>2));

--CORRELATED subquery

select a.ID,a.NAME,a.SALARY from CUSTOMERS a where a.ID in 
(select b.id from role b where b.department='IT');

--using exist

select p.name,p.age from persons p where exists
(select s.id from sales s where s.category='clothing');

--stored procedure
create procedure record as (select * from CUSTOMERS);

exec record

-- Create a stored procedure with a parameter
CREATE PROCEDURE GetEmployeeInfo
    @EmployeeID INT
AS
BEGIN
    -- Query to retrieve information for a specific employee
    SELECT *
    FROM CUSTOMERS
    WHERE ID = @EmployeeID;
END;

exec GetEmployeeInfo @EmployeeID=3;

--subtotal
SELECT category, SUM(amount) AS Subtotal
FROM sales
GROUP BY category;