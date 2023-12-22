
create database company;
use company;

create table employee(id integer,name varchar(20),role varchar(20));
alter table employee add age int;
alter table employee add salary int;
update employee set age=25;
update employee set salary=25000;

insert into employee values
(1,'raj','support'),
(2,'sam','engineer'),
(3,'finn','manager'),
(4,'john','techy'),
(5,'kent','head manager'),
(6,'smith',' asst engineer'),
(7,'mike','CEO');

CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
INSERT INTO CUSTOMERS VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00),(2, 'Khilan', 25, 'Delhi', 1500.00),(3, 'Kaushik', 23, 'Kota', 2000.00),(4, 'Chaitali', 25, 'Mumbai', 6500.00),(5, 'Hardik', 27, 'Bhopal', 8500.00),(6, 'Komal', 22, 'Hyderabad', 4500.00),(7, 'Muffy', 24, 'Indore', 10000.00);

select * from CUSTOMERS;
select*From employee
/*commit*/
begin transaction;
DELETE FROM CUSTOMERS WHERE AGE =25;
COMMIT;

/*rollback*/
begin tran;
DELETE FROM CUSTOMERS WHERE AGE < 35;
ROLLBACK;

/*Save point*/
Begin transaction;
SAVE tran S1;

begin tran;
save tran S1;
Delete from CUSTOMERS where ID>4;
rollback tran S1;

INSERT INTO CUSTOMERS VALUES (8, 'Rajesh', 32, 'Ahmedabad', 7000.00);
INSERT INTO CUSTOMERS VALUES (9, 'suresh', 32, 'chennai', 3500.00);
INSERT INTO CUSTOMERS VALUES (10, 'aneesh', 32, 'cochin', 8000.00);

select * from CUSTOMERS;

/*multiple savepoint*/
begin tran;
SAVE tran SP1;
DELETE FROM CUSTOMERS WHERE ID=1;
SAVE tran SP2;
DELETE FROM CUSTOMERS WHERE ID=2;
SAVE tran SP3;
DELETE FROM CUSTOMERS WHERE ID=7;
ROLLBACK tran SP2;


/*default key*/
Create table Demo(Id int ,name varchar(50),Salary int default 15000);
select * from Demo;
insert into Demo values(1,'raj',1500);
insert into Demo values(null,'raj',1500);
insert into Demo values(2,'sam',default);

/*cannot insert duplicate*/
Create table demo1(id int unique,name varchar(50),price int unique);
insert into demo1 values(1,'ragu',1500);
insert into demo1 values(1,'raj',1500);


Create table Demo2(id int not  null, age int);
/*cannot insert null values*/
insert into Demo values(null,1500);

/*check key*/
Create table demo4(id int, Age int check(Age between 18 and 24))
insert into demo4 values(1,15);
insert into demo4 values(1,19);


/* PRIMARY KEY AND FOREIGN KEY*/
create table persons(id integer primary key,name varchar(20),age int);
CREATE TABLE orders (
    orderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES persons(id)
);

/*set opertions*/
select * from employee union select * from CUSTOMERS;
select * from employee union select * from CUSTOMERS;
select * from employee intersect select * from CUSTOMERS;
select * from employee minus select * from CUSTOMERS;