create table emp_049(emp_no number(6),emp_name varchar2(30),job varchar2(30),dept_no number(6),sal number(6),dept_name varchar2(30));
Insert into emp_049 values (100,'shushrut','ASP',10,1700,’CSE’);
insert into emp_049 values (101,'viren','AP',20,1500,’MECH’);
insert into emp_049 values (102,'Vidhi','ASP',10,2500,’CSE’);
insert into emp_049 values (103,'Sachin','AP',20,1800,’MECH’);
insert into emp_049 values (104,'Parma','ASP',10,1700,’CSE’);


1. create view empview as select * from emp_049 where job='ASP';

2. create view empview1 as select emp_no,dept_no,emp_name,sal,dept_name from
emp_049;

3. delete from empview1 where dept_no=’10’;

4.  A. SELECT COMMAND select * from empview1;
    B. INSERION Insert into empview1 values(106,10,’freddy’,5000,’CSE’);
    C. UPDATION update empview1 set emp_name=’sona’ where emp_no=’101’;
    D. DELETION delete empview1 where emp_name=’sona’;

5.  drop view empview1;