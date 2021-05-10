set serveroutput on;

create or replace procedure findGrade(n IN number, grade OUT varchar) as
begin
declare
no_score exception;
begin
if n > 90 then
grade:='A';
elsif n > 80 then
grade:='B';
elsif n > 70 then
grade:='C';
elsif n > 60 then
grade:='D';
elsif n > 50 then
grade:='E';
elsif n <= 50 and n >=0 then
grade:='F';
else
raise no_score;
end if;
exception
when no_score then
dbms_output.put_line('Invalid score!');
end;
end;
/
declare
n number;
grade varchar(1);
begin
n:=-1;
findGrade(n, grade);
if grade is not null then
dbms_output.put_line('Grade: '||grade);
end if;
end;