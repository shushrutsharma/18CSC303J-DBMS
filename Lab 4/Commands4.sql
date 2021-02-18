1]
create table Customer_Account_Details_049(
Cust_ID number(5) constraint CAD_Pk primary key, 
Cust_Last_Name varchar2(20) constraint CAD_CLastName not null, 
Cust_Mid_Name char(3), 
Cust_First_Name varchar2(20), 
Account_No number(4) constraint CAD_AcNo unique, 
Account_Type varchar2(15), 
Bank_Branch varchar2(20), 
Cust_Email varchar2(30) constraint CAD_CEmail unique
);
desc Customer_Account_Details_049;

insert into Customer_Account_Details_049
values (1, 'Jenson', null, 'Laura', 2739, 'Savings', 'Indus Bank', 'laura.jensen@example.com');
insert into Customer_Account_Details_049
values (2, 'Viren', null, 'Parmar', 3057, 'Current', 'HDFC Bank', 'viren@gmail.com');
insert into Customer_Account_Details_049
values (3, 'Sachin', 'Kalam', 'Tilokani', 7747, 'Salary', 'SBI Bank', 'sachin@gmail.com');
insert into Customer_Account_Details_049
values (4, 'Jakin', 'Deepak', 'Patel', 4089, 'Current', 'Bank of Baroda', 'jakin@gmail.com');
insert into Customer_Account_Details_049
values (5, 'Param', null, 'Shah', 3529, 'NRI', 'Capitol Bank', 'param@gmail.com');
insert into Customer_Account_Details_049
values (12, 'Neel', null, 'Thaker', 4989, 'Savings', 'LIC Bank', 'neel@gmail.com');

select * from Customer_Account_Details_049;


2]
create table CustomerLoan_049(
LoanNo number(4) constraint CL_LNo primary key,
Cust_ID number(5) constraint CL_CID references Customer_Account_Details_049(Cust_ID),
Ammount_In_Dollar number(6,2)
);
desc CustomerLoan_049;

insert into CustomerLoan_049
values
(5577, 2, 9873.36);
insert into CustomerLoan_049
values
(8266, 4, 5660.47);
insert into CustomerLoan_049
values
(2430, 1, 6881.00);
insert into CustomerLoan_049
values
(9323, 3, 2811.73);
insert into CustomerLoan_049
values
(4743, 5, 5014.56);

select * from CustomerLoan_049;


3]
create table Employee_Details_049(
Employee_ID number(6) constraint ED_Pkey primary key,
Employee_Last_Name varchar2(20),
Employee_Mid_Name varchar2(3),
Employee_First_Name varchar2(20),
Employee_Email varchar2(30),
Employee_Dept varchar2(15) default 'HR',
Manager_ID number(6) constraint ED_MID references Employee_Details_049(Employee_ID)
);
desc Employee_Details_049;

insert into Employee_Details_049(Employee_ID,Employee_Last_Name,Employee_Mid_Name,Employee_First_Name,Employee_Email)
values
(6, 'James', null, 'Milner', 'james@gmail.com');
insert into Employee_Details_049(Employee_ID,Employee_Last_Name,Employee_Mid_Name,Employee_First_Name,Employee_Email,Manager_ID)
values
(7, 'Sergio', 'Ruk' , 'Ramos', 'sergio@gmail.com',6);

insert into Employee_Details_049
values
(8, 'Toni', null , 'Kroos', 'toni@gmail.com', 'Production' , 7);
insert into Employee_Details_049
values
(9, 'Luka', null , 'Modric', 'luka@gmail.com', 'R&D' , null);
insert into Employee_Details_049
values
(10, 'Karim', null , 'Benzema', 'karim@gmail.com', 'Production' , 9);

select * from Employee_Details_049;

4]
create table Customer_Fixed_Deposit_049(
FixedDeposit_No number(4) constraint CFD_Pkey primary key,
Cust_ID number(5) constraint CFD_CID references Customer_Account_Details_049(Cust_ID),
Account_No number(4),
Amount_In_Dollars number(7,2),
Rate_Of_Interest number(3,1) constraint CFD_ROI check (Rate_Of_Interest between 2.5 and 12.0)
);
desc Customer_Fixed_Deposit_049;

insert into Customer_Fixed_Deposit_049
values
(9320, 1, 4457, 85907.00, 3.4);
insert into Customer_Fixed_Deposit_049
values
(7837, 2, 8615, 40254.28, 4.5);
insert into Customer_Fixed_Deposit_049
values
(8072, 3, 3376, 66406.30, 8.7);
insert into Customer_Fixed_Deposit_049
values
(6422, 4, 8997, 15000.30, 5.9);
insert into Customer_Fixed_Deposit_049
values
(7720, 5, 8868, 12374.31, 11.5);

select * from Customer_Fixed_Deposit_049;

5]
alter table Customer_Fixed_Deposit_049 drop constraint  CFD_Pkey;

6]
alter table Customer_Fixed_Deposit_049 add constraint CFD_Pkey primary key(Account_No);

7]
select Cust_Last_Name from Customer_Account_Details_049;

8]
select DISTINCT(Cust_Last_Name) from Customer_Account_Details_049;

9]
select * from Customer_Fixed_Deposit_049 where Amount_In_Dollars > 10000;

10]
select Cust_ID,Account_No from Customer_Account_Details_049 where Cust_First_Name = 'Graham';

11]
select Cust_ID,Cust_Last_Name from Customer_Account_Details_049 where Account_Type = 'Savings' AND Bank_Branch = 'Capital Bank';

12]
select Cust_ID,Cust_Last_Name from Customer_Account_Details_049 where Account_Type != 'Savings' AND Bank_Branch != 'Capital Bank';

13]
select Cust_ID,Cust_Last_Name from Customer_Account_Details_049 where Account_Type = 'Savings' OR Bank_Branch = 'Capital Bank';

14]
select Cust_ID from Customer_Fixed_Deposit_049 where Amount_In_Dollars between 10000.00 and 20000.00;

15]
select * from Customer_Account_Details_049 where Bank_Branch in ('Capital Bank','Indus Bank');

16]
select Account_No,Bank_Branch from Customer_Account_Details_049 where Bank_Branch like 'Ca%';

17]
select Account_No,Bank_Branch from Customer_Account_Details_049 where Bank_Branch like '_a%';

18]
select * from Employee_Details_049 where Manager_ID is null;

19]
select * from Employee_Details_049 where Manager_ID is not null;

20]
select Cust_ID,Amount_In_Dollars from Customer_Fixed_Deposit_049  order by Amount_In_Dollars;