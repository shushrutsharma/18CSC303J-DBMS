create table EMP_049(EmpNo number(3), EName varchar2(30), Job varchar2(20), DeptNo number(2), Sal number(5), CustHandling number(2));
INSERT INTO EMP_049 VALUES (100,'Shushrut Kumar','Manager',01,4000,01);
INSERT INTO EMP_049 VALUES (101,'Viren Parmar','J.Manager',01,3500,02);
INSERT INTO EMP_049 VALUES (102,'Vidhi Rai','Analyst',02,5000,03);
INSERT INTO EMP_049 VALUES (103,'Param Shah','Accountant',02,2500,04);
INSERT INTO EMP_049 VALUES (104,'Jakin Patel','Assistant',03,2000,04);
INSERT INTO EMP_049 VALUES (105,'Don Draper','PM',04,1500,05);

select * from EMP_049;

EmpNo		EName		Job		DeptNo		Sal		CustHandling
100		Shushrut Kumar	Manager		01		4000		01
101		Viren Parmar	J.Manager	01		3500		02
102		Vidhi Rai Analyst	02		5000		03
103		Param Shah	Accountant	02		2500		04
104		Jakin Patel	Assistant	03		2000		04
105		Don Draper	PM		04		1500		05

create table DEPT_049(DeptNo number(2), DeptName varchar2(25));
INSERT INTO DEPT_049 VALUES (01,'General Management');
INSERT INTO DEPT_049 VALUES (02,'Marketing');
INSERT INTO DEPT_049 VALUES (03,'Human Resource');
INSERT INTO DEPT_049 VALUES (04,'Sales');
INSERT INTO DEPT_049 VALUES (05,'Operations');

select * from DEPT_049;

DeptNo		DeptName
01		General Management
02		Marketing
03		Human Resource
04		Sales
05		Operations

create table CUST_049(CustId number(2), CustName varchar2(30));
INSERT INTO CUST_049 VALUES (01,'Michael Scott');
INSERT INTO CUST_049 VALUES (02,'Jim Duncan');
INSERT INTO CUST_049 VALUES (03,'Dwight Schrut');
INSERT INTO CUST_049 VALUES (04,'Pam Besly');
INSERT INTO CUST_049 VALUES (05,'Kelly Kapoor');
INSERT INTO CUST_049 VALUES (06,'Ted Mosbey');
select * from CUST_049;

CustId		CustName
01		'Michael Scott'
02		'Jim Duncan'
03		'Dwight Schrut'
04		'Pam Besly'
05		'Kelly Kapoor'
06		'Ted Mosbey'

create table LOAN_049(Lid number(2), CustId number(2), Amount number(6));
INSERT INTO LOAN_049 VALUES (10,03,50000);
INSERT INTO LOAN_049 VALUES (20,05,35000);
INSERT INTO LOAN_049 VALUES (30,06,80000);
select * from LOAN_049;

Lid		CustId		Amount
10		03		50000
20		05		35000
30		06		80000

1] Issue a query to display information about employees who earn more than any employee in dept 1.
==> select * from EMP_049 where SAL > (select max(SAL) from EMP_049 where DeptNo = 01);

2] Display the employee details, departments that the departments are same in both the emp and dept.
==> select * from EMP_049, DEPT_049 where EMP_049.DeptNo = DEPT_049.DeptNo;

3] Display the employee details, departments that the departments are not same in both the emp and dept.
==> select * from EMP_049, DEPT_049 where EMP_049.DeptNo != DEPT_049.DeptNo;

6] Display the details of those who draw the salary greater than the average salary
==> select * from EMP_049 where SAL > (select avg(SAL) from EMP_049);

7] Write a query to display their employee names (using any join).
==> select EName from EMP_049 left outer join DEPT_049 on EMP_049.DeptNo = DEPT_049.DeptNo;

9] Get all combinations of emp and cust information such that the emp and cust are co-located.
==> select EmpNo, EName, CustName from EMP_049, CUST_049 where EMP_049.CustHandling = CUST_049.CustId;

10] Display the Employee number, Employee name and department name of the employees who are working for some department.
==> select EmpNo, EName, DeptName from EMP_049, DEPT_049 where EMP_049.DeptNo = DEPT_049.DeptNo;

11] Display the First and Last Name of Customer who have taken Loan.
==> select CustName, Lid, Amount from CUST_049, LOAN_049 where CUST_049.CustId = LOAN_049.CustId;

create table STUD_049(RegNo number(2), Name varchar2(30));
INSERT INTO STUD_049 VALUES (01,'Shushrut Kumar');
INSERT INTO STUD_049 VALUES (02,'Viren Parmar');
INSERT INTO STUD_049 VALUES (03,'Vidhi Rai');
INSERT INTO STUD_049 VALUES (04,'Param Shah');
INSERT INTO STUD_049 VALUES (05,'Jakin Patel');
INSERT INTO STUD_049 VALUES (06,'Don Draper');
select * from STUD_049;

RegNo		Name
01		'Shushrut Kumar'
02		'Viren Parmar'
03		'Vidhi Rai'
04		'Param Shah'
05		'Jakin Patel'
06		'Don Draper'

create table GRADE_049(RegNo number(2), grade varchar2(1));
INSERT INTO GRADE_049 VALUES (01,'O');
INSERT INTO GRADE_049 VALUES (02,'A');
INSERT INTO GRADE_049 VALUES (03,'B');
INSERT INTO GRADE_049 VALUES (04,'C');
INSERT INTO GRADE_049 VALUES (05,'D');
INSERT INTO GRADE_049 VALUES (06,'E');
select * from GRADE_049;

RegNo		Grade
01		'O'
02		'A'
03		'B'
04		'C'
05		'D'
06		'E'

create table RESULT_049(RegNo number(2), Result varchar2(4));
INSERT INTO RESULT_049 VALUES (01,'PASS');
INSERT INTO RESULT_049 VALUES (02,'PASS');
INSERT INTO RESULT_049 VALUES (03,'PASS');
INSERT INTO RESULT_049 VALUES (04,'PASS');
INSERT INTO RESULT_049 VALUES (05,'FAIL');
INSERT INTO RESULT_049 VALUES (06,'FAIL');
select * from RESULT_049;

RegNo		Result
01		'PASS'
02		'PASS'
03		'PASS'
04		'PASS'
05		'FAIL'
06		'FAIL'

4] Display the Student name and grade by implementing a left outer join.
==> select name, grade from STUD_049 left outer join GRADE_049 on STUD_049.RegNo = GRADE_049.RegNo;

5] Display the Student name, register no, and result by implementing a right outer join.
==> select STUD_049.RegNo, Name, Result from STUD_049 right outer join RESULT_049 on STUD_049.RegNo = RESULT_049.RegNo;

8] Display the Student name register no by implementing a full outer join.
==> select Name from STUD_049 full outer join GRADE_049 on STUD_049.RegNo = GRADE_049.RegNo;