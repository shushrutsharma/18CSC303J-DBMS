18CSC303J-Database Management System
Experiment 7
Ayush Vaishnav
RA1811028010049
1. Create an employee table.
create table EMP049 (EmpId number(3), Fname varchar2(20), Lname varchar2(20),
Salary number(6), DeptId number(2), Job varchar2(20), JobId number(2), DOB date,
Experience number(2), ReportTo varchar2(20), ReportId number(3));
desc EMP049;
INSERT INTO EMP049 VALUES(163, 'Arjun', 'Kumar', 4000, 20, 'PM', 12,
TO_DATE('2002-01-28', 'yyyy-mm-dd'), 12, 'Ram', 18);
INSERT INTO EMP049 VALUES(210, 'Janga', 'Fett', 5000, 13, 'Accountant', 35,
TO_DATE('1997-05-12', 'yyyy-mm-dd'), 5, 'Payam', 89);
INSERT INTO EMP049 VALUES(092, 'Baby', 'Yoda', 3000, 47, 'PM', 12,
TO_DATE('2000-01-03', 'yyyy-mm-dd'), 1, 'Anil', 121);
INSERT INTO EMP049 VALUES(169, 'Din', 'Djarin', 1500, 10, 'Accountant', 35,
TO_DATE('1980-05-17', 'yyyy-mm-dd'),6, 'Susan', 73);
INSERT INTO EMP049 VALUES(001, 'Cara', 'Dunes', 7000, 39, 'Manager', 01,
TO_DATE('1999-03-14', 'yyyy-mm-dd'), 4, 'Ram', 18);
INSERT INTO EMP049 VALUES(311, 'Moff', 'Gideon', 2000, 15, 'Marketing', 34,
TO_DATE('1991-05-18', 'yyyy-mm-dd'), 7, 'Ram', 18);
INSERT INTO EMP049 VALUES(401, 'Master', 'Luke', 7777, 48, 'IT', 31,
TO_DATE('1969-07-21', 'yyyy-mm-dd'), 2, 'Ram', 18);
INSERT INTO EMP049 VALUES(163, 'Kylo', 'Ren', 3332, 42, 'Technician', 64,
TO_DATE('1996-11-05', 'yyyy-mm-dd'), 3, 'Susan', 73);
2. Display all employee names and salary whose salary is greater than
minimum salary of the company and job title starts with ‘M‘.
SELECT CONCAT(Fname,Lname), Salary FROM EMP049 WHERE Salary > (SELECT Min(Salary) FROM EMP049) AND Job LIKE 'M%';
3. Issue a query to find all the employees who work in the same job as
Arjun
SELECT EmpId, Fname, Lname, Job FROM EMP049 WHERE Job = (SELECT Job FROM EMP049 WHERE Fname = 'Arjun');
4. Display the names and dob of all employee who were born in january.
SELECT Fname, Lname, DOB FROM EMP049 WHERE to_char(DOB, 'mon')='jan';5. Display the least experienced employees details.
SELECT * FROM EMP049 WHERE Salary = (SELECT MIN(Salary) FROM EMP049);
6. Write a query to display the name ( first name and last name ) for
those employees who gets more salary than the employee whose ID is
163
SELECT Fname, Lname FROM EMP049 WHERE Salary > (SELECT Salary FROM EMP049 WHERE EmpId = 163);
7. Write a query to display the name ( first name and last name ),
salary, department id, job id for those employees who works in the
same designation as the employee works whose id is 169.
SELECT Fname,Lname,Salary,DeptId,JobId FROM EMP049 WHERE Job = (SELECT JOB FROM EMP049 WHERE EmpId = 169);
8. Write a query to display the employee id, employee name (first name
and last name ) for all employees who earn more than the average
salary.
SELECT EmpId,Fname,Lname FROM EMP049 WHERE Salary > (SELECT AVG(Salary) FROM EMP049);
9. Write a query to display the employee name ( first name and last
name ), employee id and salary of all employees who report to
Payam.
SELECT EmpId,Fname,Lname,Salary FROM EMP049 WHERE ReportTo = 'Payam';10.Write a query to display all the information of an employee whose salary and reporting person id is 3000 and 121 respectively.
SELECT * FROM EMP049 WHERE Salary = 3000 AND ReportId = 121;
11.Write a query in SQL to display the full name (first and last name) of
manager who is supervising 4 or more employees.
SELECT DISTINCT(ReportTo) FROM EMP049 a WHERE 4 <= (SELECT COUNT(*) FROM EMP049 WHERE ReportTo = a.ReportTo);
12.Write a query in SQL to display the details of departments managed
by Susan.
SELECT DeptId FROM EMP049 WHERE ReportTo = 'Susan'

SELECT DeptId FROM EMP049 WHERE ReportTo = 'Susan';