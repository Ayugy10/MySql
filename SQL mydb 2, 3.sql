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
 
 -- to start to join two table
use mydb;
 create table Pharma(
 PharmaID int not null auto_increment, 
 customerID int,
 Pharmaname varchar(255),
 startdate varchar(255), 
 location varchar(255),
 city varchar (255),
Primary key (PharmaID),
foreign key (PharmID) references vendor(customerID));



drop table pharma;

alter table Pharma
modify location varchar(255);
alter table pharma
drop column enddate;

alter table Pharma
modify column startdate datetime not null;



insert into Pharma(PharmaID, customerId, Pharmaname, Startdate, location, city)
values(null, 1, 'cvs', now(), 4324, 'Alexandria'),
(null, 3, 'Wallgreen', now(),  2345, 'Springfiled'),
(null, 5, 'Addispharma', now(), 1343, 'Addis Ababa'),
(null, 6, 'Walmart', now(), 5678, 'Lorton'),
(null, 8, 'ethiopharm', now(), 1234, 'Potomac'),
(null, 11, 'cvs', now(), 3467, 'Bellevue'),
(null, 14, 'Walmart', now(), 2345, 'Karkland'),
(null, 17, 'pullman pharm', now(), 1345, 'Pullman'),
(null, 19, 'CVS', now(), 4323, 'Newyork city');


insert into Pharma(PharmaID, Pharmaname, Startdate, location, city)
values(null, 'HTML', now(), 3456, 'Rome'),
(null, 'c#', now(), 2245, 'LasVages');


-- inner join

select Pharma.pharmaID, vendor.customerId,Pharma.pharmaname, vendor.firstname, Pharma.startdate, Vendor.lastname, Pharma.startdate, vendor.nickname, Pharma.location, vendor.zipcode, Pharma.city, vendor.gender, vendor.country, vendor.salary, vendor.nationality, vendor.fee
from Pharma
inner join vendor on Pharma.PharmaID=vendor.customerId;

-- left join -to mach all left with right

select Pharma.pharmaID, vendor.customerId,Pharma.pharmaname, vendor.firstname, Pharma.startdate, Vendor.lastname, Pharma.startdate, vendor.nickname, Pharma.location, vendor.zipcode, Pharma.city, vendor.gender, vendor.country, vendor.salary, vendor.nationality, vendor.fee
from Pharma left outer join vendor
 on Pharma.PharmaID=vendor.customerId;
 
 -- right outer joint will talke all right side table and maching left side table
 
select Pharma.pharmaID, vendor.customerId,Pharma.pharmaname, vendor.firstname, Pharma.startdate, Vendor.lastname, Pharma.startdate, vendor.nickname, Pharma.location, vendor.zipcode, Pharma.city, vendor.gender, vendor.country, vendor.salary, vendor.nationality, vendor.fee
from Pharma right outer join vendor
 on Pharma.PharmaID=vendor.customerId;
 
 -- to join left and right outer by using union
 
 select Pharma.pharmaID, vendor.customerId,Pharma.pharmaname, vendor.firstname, Pharma.startdate, Vendor.lastname, Pharma.startdate, vendor.nickname, Pharma.location, vendor.zipcode, Pharma.city, vendor.gender, vendor.country, vendor.salary, vendor.nationality, vendor.fee
from Pharma left outer join vendor
 on Pharma.PharmaID=vendor.customerId
union
select Pharma.pharmaID, vendor.customerId,Pharma.pharmaname, vendor.firstname, Pharma.startdate, Vendor.lastname, Pharma.startdate, vendor.nickname, Pharma.location, vendor.zipcode, Pharma.city, vendor.gender, vendor.country, vendor.salary, vendor.nationality, vendor.fee
from Pharma right outer join vendor
 on Pharma.PharmaID=vendor.customerId; 
 
-- count group by 
 
 Select count(customerId), firstname, country, salary
 from vendor
 where country='Ethiopia'
 group by country
 order by count(customerId);
 
 
 -- avg group by salary
 
 Select avg(salary), country
 from vendor
 where country='Ethiopia'
 group by country
 order by avg(salary);
 
 -- sum group by
 
  Select sum(fee), country
 from vendor
 where country='Ethiopia'
 group by country
 order by sum(fee);
 
 -- to find country name start and end with a
 
 Select *
 from vendor
 where country like 'a%' and country like '%a';
 
 -- 1 add columin using alter 
 
 SELECT * FROM mydb.vendor;
  


create schema MYDB2;

use mydb2;

create table customer (
Cust_ID int not null auto_increment,
Cust_Firstname varchar(255),
Cust_Lastname varchar(255),
Cust_Age int,
Cust_gender character,
Cust_country varchar (255),
Cust_salary float not null,
 primary key (cust_ID)
 );
 
 use mydb2;
alter table customer
add column Bonus int not null;

update customer
set bonus=100
where customerId in (1, 2, 3, 4, 5,6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);

---- modify column using alter

alter table Customer
modify age int not null;

--- multiple data to drop sepret by comma
use mybd;

alter tabel customer
drop column cust_nickname,
drop column cust_bons;


 insert into customer(cust_Id, Cust_Firstname, Cust_Lastname, Cust_Age, Cust_gender, Cust_country, Cust_salary)
values(01, 'Kate', 'Thomas',  54, 'F', 'Uganda', 20000),
(02, 'Kate', 'Thomas', 54, 'F', 'Kenya', 250000),
(03, 'Anie', 'zack', 35, 'F', 'Canada', 33000),
(04, 'Amanu', 'Timitty', 55, 'M', 'Brazil', 29460),
(05, 'kayle', 'Steven', 54, 'M', 'America', 70100),
(06, 'Hector', 'Padro', 23, 'M', 'Mexico', 35081),
(07, 'Skaylet', 'chin', 17, 'F', 'India', 56001),
(08, 'Gibril', 'Cuntie', 29, 'M', 'Germany', 67543),
(09, 'Ali', 'Kebede', 77, 'M', 'Iran', 67853),
(10, 'Lora', 'Hosee', 54, 'F', 'Mexico', 45678),
(11, 'Dominicq', 'Johnson', 31, 'F', 'America', 34567),
(12, 'Lou', 'Yonatan', 40, 'M', 'Ethiopia', 98023),
(13, 'Abay', 'Belay', 42, 'M', 'Ethiopia', 89345),
(14, 'Sue', 'Chang', 27, 'F', 'Vetinam', 56789),
(15, 'Rej', 'Gregery', 35, 'M', 'India', 67000),
(16, 'Abigail', 'Yared', 18, 'F', 'Itily', 99876);


--- Insert the following Data

insert into customer(cust_Id, Cust_Firstname, Cust_Lastname, Cust_Age, Cust_gender, Cust_country, Cust_salary)
values(222, 'Antony', 'Martial', 24, 'M', 'France',20000000),
(333, 'Feiza', 'Mohammed', 24, 'F', 'Uzbekistan', 10000000),
(444, 'Soresa', 'Haile', 24, 'M', 'Uzbekistan', 34000000),
(555, 'Beka', 'soresa', 25, 'M', 'Unkown', 340000000),
(666, 'Nick', 'Jones', 26, 'M', 'USA', 20000000),
(777, 'Poul', 'Pogba', 26, 'M', 'France', 200000000),
(888, 'Betty', 'G', 26, 'F', 'Ethiopia', 70000000);

--- to alter salary from flot to decimal

alter table customer
modify column cust_salary decimal(12,0);

--- updat cust_ID 333, 444, 555 country to ethiopia

Update customer
set Cust_country='Ethiopia'
Where Cust_ID in (333, 444, 555);

--- delete customer name from the table

delete from customer
where cust_ID=668;

-- write query which display all column from the talbe

select*
from customer;

-- write query which display all column from the talbe citizenship is Ethiopia

Select *
from customer
where Cust_country='Ethiopia';

--- write a query which display all columns from the table where the salary >5M. 

select *
from customer
where Cust_ID=any(select Cust_ID from customer where cust_salary>5000000);

-- write a query which display all "M' customers firstname, last name and country 

select Cust_Firstname, cust_lastname, cust_country 
from Customer
where cust_gender='M';


-- write a query which display only distinct country

select distinct cust_country
from customer;

-- write a query which display all "F' customers firstname, last name and country DESC 

select count (cust_Firstname), cust_lastname, cout_country 
from customer
where cust_gender='F' 
order by cust_country desc;


--- write a query that display all records from table gender female 

select * 
from customers
where gender = 'F' and salary > 2000000 and country = 'ethiopia'


-- write query that display all records from the table whre citizenship is ethiopia adn uzbekistan????

Select *
from customer 
Where Cust_country= 'Ethiopia', or 'Kenya';

-- write query that display min sallary from the table ???

Select Min(cust_salary)
from customer;

-- write query that display max fee sallary from the table no fee column????

select max(salary)
from customer;

---- write query that display a number of customer  

select count(cust_ID) as number_of_customer
from customer;

---- write query that display avg salary from record


select avg(cust_salary)
from customer;

---- write query that display the sum  of customer salary

select sum(Cust_salary)
from customer; 

--- write query that display all record the first name start with "a"


select *
from customer
where cust_firstname like 's%';

--- whrte query that display all record that lastname start with 'p' and end with 'a'

select *
from customer 
where cust_lastname like 'p%a';

-- write query that display all record salary between 2m and 8m ???

select*
From Customer
where cust_salary between 20000000 and 80000000;


-- write a query that display all the customer from ethiopia, usa, and france 

select *
from customer
where cust_country in('Ethiopia','USA','France');


--- write query that display all record the first name 2nd later with "e" and lastname end "e" it work with x mark when it is excute

Select *
from customer
where cust_firstname like '_e%' and cust_lastname like '%e';



use mydb2;


-- inside customer table add column



--  create a table name address inside mydb2 customer uniqely identifyies each record in a table by cust_zip
--- the customer table and customer address table are connected by cust_ID


use mydb2;

CREATE TABLE mydb2.ADDRESS(
ZIP VARCHAR(12) not null,
STREET VARCHAR(200) not null,
CITY VARCHAR(100) not null,
STATE VARCHAR(100),
Cust_ID INT,
PRIMARY KEY (ZIP),
FOREIGN KEY (cust_ID) REFERENCES CUSTOMER (cust_ID)
);

insert into address values(1000,'megenagn','Addis Ababa', 'Addis Ababa', 111);
insert into address values(3000,'4-kilo','Addis Ababa', 'Addis Ababa', 222);
insert into address values(4000,'41-eyesus','Addis Ababa', 'Addis Ababa', 888);
insert into address values(5000,'6-kilo','Addis Ababa', 'Addis Ababa',555);
insert into address values(2000,'01-st','Iteya', 'Oromia', 444);

insert into mydb2.address(ZIP, STREET, CITY, STATE) 
values(7000,'4-kilo','San Diego', 'California'),
(8000,'kU-road','Los Angeles', 'California'),
(9000,'JK-road','Miami', 'Florida'),
(10000,'Lj-road','Atlanta', 'Georgia');


-- Write-- a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and FULL OUTER JOIN/union
--- inner join
select *
from address inner join customer
on address.cust_ID=customer.cust_ID;
-- or
select address.zip, customer.cust_ID, address.street, customer.cust_lastname, address.city, customer.cust_lastname, customer.cust_age, customer.cust_country, customer.cust_salary
from address inner join customer
on address.cust_ID=customer.cust_ID;

-- left outer joint
select address.zip, customer.cust_ID, address.street, customer.cust_lastname, address.city, customer.cust_lastname, customer.cust_age, customer.cust_country, customer.cust_salary
from address left outer join customer
on address.cust_ID=customer.cust_ID;
       
       -- right outer joint
select address.zip, customer.cust_ID, address.street, customer.cust_lastname, address.city, customer.cust_lastname, customer.cust_age, customer.cust_country, customer.cust_salary
from address right outer join customer
on address.cust_ID=customer.cust_ID;  

-- Full outer joint/union      

select address.zip, customer.cust_ID, address.street, customer.cust_lastname, address.city, customer.cust_lastname, customer.cust_age, customer.cust_country, customer.cust_salary
from address left outer join customer
on address.cust_ID=customer.cust_ID
union
select address.zip, customer.cust_ID, address.street, customer.cust_lastname, address.city, customer.cust_lastname, customer.cust_age, customer.cust_country, customer.cust_salary
from address right outer join customer
on address.cust_ID=customer.cust_ID;


 














 



 
















