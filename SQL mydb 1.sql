SELECT * FROM mydb.vendor;

Drop schema mydb;
create schema mydb;
-- create database mydb;

use mydb;
 create table Vendor(
 customerID int not null auto_increment,
 firstname varchar(255),
 lastname varchar(255),
 nickname varchar(255),
 zipcode varchar (255),
 age int,
 gender character,
 country varchar (255),
 salary float not null,
 Nationality varchar (255),
 Fee float not null,
primary key (customerID)
);

alter table vendor
modify column customerId int not null;



 
 -- to change nmae and city
update mydb.vendor
set firstname = 'Alfred', county='German'
where customerID=1;

update vendor
set country = 'ethiopia'
where customerID in(3,4);


select*
from vendor
where country= ('ethiopia') and (fees between 200 and 300);

SELECT * FROM mydb.vendor;
use mydb;

--- using in

UPDATE vendor
set Nationality='kenya'
where customerId in(2,3,4);

-- using max

select max('fees') maxsalary
from vendor
where country='kenya';

-- using sum

select sumsalary
from vendor
where country='Ethiopian';

--- to find how many customer # using in

Select count(customerId) as Numberofcustomer
from vendor
where country in ('Ethiopia', 'India', 'America', 'Kenya');


alter table vendor
modify fee float;



USE mydb;

select*
FROM vendor
WHERE country= 'Ethiopis' and (salary between 50000 and 80000);

select count(mydb) as numberofcustomer
from vendor
where country= 'kenya';

update mydb.vendor
set firstname = 'Alfred', City='Frankfurt'
where customerID=5;

drop schema mydb;
create schema mydb;
use mydb;

create table vendor (
customerID int not null auto_increment,
 firstname varchar(255),
 lastname varchar(255),
 nickname varchar(255),
 zipcode varchar (255),
 age int,
 gender character,
 country varchar (255),
 salary float not null,
 Nationality varchar (255),
 Fee float not null,
primary key (customerID)
);

alter table vendor
modify customerId int not null;

SELECT *
FROM vendor;

use mydb;

insert into Vendor(customerId, firstname, lastname, nickname, zipcode, age, gender, country, salary, nationality, fee)
values(01, 'Kate', 'Thomas', 'Kety', 22158, 54, 'F', 'Uganda', 20000, 'Ugandan', 327),
(02, 'Kate', 'Thomas', 'Kety', 1343, 54, 'F', 'Kenya', 250000, 'Kenyan', 654),
(03, 'Anie', 'zack', 'Ann', 98763, 35, 'F', 'Canada', 33000, 'Canadian', 543),
(04, 'Amanu', 'Timitty', 'Aman', 13453, 55, 'M', 'Brazil', 29460, 'Brazilian', 345),
(05, 'kayle', 'Steven', 'Kay', 23451, 54, 'M', 'America', 70100, 'American', 324),
(06, 'Hector', 'Padro', 'Hector', 54351, 23, 'M', 'Mexico', 35081, 'Mexican', 523),
(07, 'Skaylet', 'chin', 'skay', 23641, 17, 'F', 'India', 56001, 'Indian', 221),
(08, 'Gibril', 'Cuntie', 'Gibril', 33421, 29, 'M', 'Germany', 67543, 'Germanyan', 432),
(09, 'Ali', 'Kebede', 'Ali', 23145, 77, 'M', 'Iran', 67853, 'Iranian', 564),
(10, 'Lora', 'Hosee', 'Lora', 22134, 54, 'F', 'Mexico', 45678, 'Meican', 765),
(11, 'Dominicq', 'Johnson', 'Dominicq', 23541, 31, 'F', 'America', 34567, 'American', 345),
(12, 'Lou', 'Yonatan', 'Lou', 22356,  40, 'M', 'Ethiopia', 98023, 'Ethiopian', 534),
(13, 'Abay', 'Belay', 'Abay', 34653, 42, 'M', 'Ethiopia', 89345, 'Ethiopian', 342),
(14, 'Sue', 'Chang', 'Sue', 22452, 27, 'F', 'Vetinam', 56789, 'Vetinamise', 234),
(15, 'Rej', 'Gregery', 'Rej', 22145, 35, 'M', 'India', 67000, 'Indian', 245),
(16, 'Abigail', 'Yared', 'Abi', 13245, 18, 'F', 'Itily', 99876, 'Italyan', 235);


use mydb;
-- how many customer do we have?

SELECT COUNT(*) AS number_of_customerid 
from vendor;

-- to find a sum of totla salary <10000

select sum(salary) as total_salary
from vendor
where country='kenya'<10000;

-- to find avg fee 

select avg(fee) total_fee
from vendor
where country='ethiopia';

-- to find how many male or female customer

SELECT 
COUNT(CASE gender WHEN 'M' THEN 1 END) AS number_of_m,
COUNT(CASE gender WHEN 'F' THEN 1 END) AS number_of_f
FROM vendor;

-- count of people from country 

select count(customerid) as number_of_customer
From vendor 
where country= 'Ethiopia';

-- sum/avg of salary customer form Ethiopia

select avg(fee) as number_of_customer
From vendor 
where country='Kenya';

-- like opration to get all customer firstname start with A

select* 
from Vendor
where firstname like 'A%';

-- like opration to get all customer lastname start with A

select* 
from Vendor
where lastname like 'S%';


--- using in  find out how many customerfemail and male, by firstname and salary

SELECT gender, firstname, salary
FROM vendor
where country in ('Ethiopia', 'kenya', 'America');

-- using  exists, all, any, between

select*
from vendor
where exists(select firstname from vendor where customerId= 5);

Select firstname
from vendor
where customerId= any(select customerId from vendor where salary between 34000 and 70000);

Select lastname
from vendor
where customerId= any(select customerId from vendor where fee between 100 and 300);

select*
from vendor
where sallary between 50000 and 90000;

select*
from vendor
where country= 'Ethiopia' and (salary between 20000 and 60000);

use mydb;
-- to add Job_title and city on existing table
alter table vendor
add column Job_title varchar(255)not null;

alter table Vendor
add column city varchar(255)not null;

update Vendor
set job_title='Audtor'
where customerId in (5,7,12);

update vendor
set City='Britannia'
where customerId in ( 4, 7, 14, 16);
 
 

 
 
 



 
















