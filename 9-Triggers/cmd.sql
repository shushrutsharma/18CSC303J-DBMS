create table STD049 ("Std_ID" number(6), "Std_name" varchar2(20),"Subject"  
varchar2(10), "Sub_Code" number(2), "Marks" Number(2), "Grade" varchar2(20)) ;

INSERT INTO STD049 ("Std_ID", "Std_Name" , "Subject" , "Sub_Code", "Marks" , "Grade")   
    WITH input AS (   
    SELECT 0001, 'Shushrut' , 'Maths', 10 ,  90 , 'A'  FROM dual UNION ALL  
    SELECT 0002, 'Viren'   , 'History', 30 ,  87 , 'B'    FROM dual UNION ALL  
    SELECT 0003, 'Vidhi', 'Physics'   , 20 ,   91 , 'A'  FROM dual UNION ALL  
    SELECT 0004, 'Sachin' , 'EVS' , 40 ,   83 , 'B'  FROM dual UNION ALL  
    SELECT 0005, 'Param', 'History'   , 50 ,   57 , 'D'  FROM dual   
    ) SELECT * FROM input ;


-- EXP9 --
create table stdn049 (rollno number(3), name varchar(2), m1 number(3), m2 number(3), m3 number(3), tot number(3), avrg number(3), result varchar(10));

create or replace trigger t1 before insert on stdn
for each row
begin
:new.tot:=:new.m1+:new.m2+:new.m3;
:new.avrg:=:new.tot/3;
if(:new.m1>=50 and :new.m2>=50 and :new.m3>=50) THEN
:new.result:='pass';
else
:new.result:='Fail';
end if;
end;
/



create table STUDENT049 (Id number(2), Name varchar(20), Age number(3), History number(3), Physics number(3), Maths number(3), Result varchar2(4));


CREATE OR REPLACE TRIGGER grade_display
BEFORE INSERT ON STUDENT049
FOR EACH ROW
BEGIN
IF (:NEW.History >=50 and :NEW.Physics >= 50 and :NEW.Maths >= 50) THEN
:NEW.Result := 'PASS';
ELSE
:NEW.Result := 'FAIL';
END IF;
END;
/

INSERT INTO STUDENT049 (Id, Name, Age, History, Physics, Maths) VALUES (01, 'Shushrut Kumar', 27, 99, 95, 100);
INSERT INTO STUDENT049 (Id, Name, Age, History, Physics, Maths) VALUES (02, 'Viren Parmar', 21, 92, 90, 95);
INSERT INTO STUDENT049 (Id, Name, Age, History, Physics, Maths) VALUES (03, 'Vidhi Rai', 49, 20, 55, 33);


CREATE OR REPLACE TRIGGER invalid_age
BEFORE INSERT ON STUDENT049
FOR EACH ROW
BEGIN
IF (:NEW.Age > 100) THEN
raise_application_error(-20000, 'INSERTING INVALID AGE!');
END IF;
END;
/

INSERT INTO STUDENT049 (Id, Name, Age, History, Physics, Maths) VALUES (04, 'Sachin Tilokani', 120, 100, 49, 88);