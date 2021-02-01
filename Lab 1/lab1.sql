
create table RA1711029010054("Emp No" number(6), "Ename" varchar2(20), "Job" varchar2(10), "Dept No" number(3), "Sal" number(7));
desc RA1711029010054;

alter table RA1711029010054 add(Experience number(2));
desc RA1711029010054;

alter table RA1711029010054 drop column Experience;
desc RA1711029010054;

INSERT INTO RA1711029010054
VALUES 
(101, 'Alex Mercer', 'Founder', 001, 100000);
INSERT INTO RA1711029010054
VALUES 
(102, 'Tony Stark', 'Co Founder', 010, 90000);
INSERT INTO RA1711029010054
VALUES 
(103, 'Steve Rogers', 'Editor', 100, 80000);
INSERT INTO RA1711029010054
VALUES 
(104, 'Clint Barton', 'SWE', 101, 40000);
INSERT INTO RA1711029010054
VALUES 
(105, 'Natasha Romanoff', 'HR', 110, 35000);
select * from RA1711029010054;

UPDATE RA1711029010054 SET "Dept No"=1 WHERE "Sal">50000;
select * from RA1711029010054;

SELECT "Ename" FROM RA1711029010054 WHERE "Emp No"=101;

create table Dept("Dept No" number(3), Dname varchar2(10), LOC varchar2(10), EMPNO number(6));
desc Dept;

INSERT INTO Dept
VALUES
(101, 'CSE', 'North', 222220);
INSERT INTO Dept
VALUES
(102, 'ECE', 'South', 222221);
INSERT INTO Dept
VALUES
(103, 'Mech', 'East', 222223);
INSERT INTO Dept
VALUES
(104, 'Civil', 'West', 222224);
INSERT INTO Dept
VALUES
(105, 'Bio Tech', 'N. East', 222225);
select * from Dept;

SELECT * FROM Dept WHERE "Dept No"=101;

UPDATE Dept SET "Dept No"=1 WHERE "DNAME"='CSE';
select * from Dept;

truncate table RA1711029010054;
drop table Dept;

create table RA1811028010049("Emp No" number(6), "Ename" varchar2(20), "Job" varchar2(10), "Dept No" number(3), "Sal" number(7));

INSERT INTO RA1811028010049
VALUES
(001, 'Shushrut', 'Student', 001, 100000);


INSERT INTO RA1811028010049
VALUES
(002, 'Viren', 'Engineer', 010, 7000);
INSERT INTO RA1811028010049
VALUES
(003, 'Sachin', 'Economist', 100, 60000);
INSERT INTO RA1811028010049
VALUES
(004, 'Vidhi', 'Journalist', 101, 90000);
INSERT INTO RA1811028010049
VALUES
(005, 'Parma', 'Developer', 110, 54000);
select * from RA1811028010049;