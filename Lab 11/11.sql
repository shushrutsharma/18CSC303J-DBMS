1. select * from emp_049 where sal>(select max(sal) from emp_049 where emp_no=1);

2. select * from emp_049,dep_049 where emp_049.dept_no=dep_049.dept_no;

3. select * from emp_049,dep_049 where emp_049.dept_no!=dep_049.dept_no;


4. select stud1_049.name,grade from stud1_049 left outer join stud2_049 on stud1_049.reg_no=stud2_049.reg_no;


5. select stud1_049.reg_no, name,result from stud1_049 right outer join stud2_049 on stud1_049.reg_no = stud2_049.reg_no;


6. select distinct * from emp_049 where emp_049.sal >= (select avg(sal) from emp_049);

7. select emp_name from emp_049 full outer join dep_049 on (emp_049.dept_no= dep_049.dept_no);

8. select stud1_049.reg_no,name from stud1_049 full outer join stud2_049 on (stud1_049.reg_no= stud2_049.reg_no);

9. SELECT emp_no,emp_name,emp_city,cust_id FROM employee_049,cust_049 where employee_049.emp_city=cust_049.cust_city;


10. select emp_no,emp_name,dname from emp_049,dep_049 where emp_049.dept_no=dep_049.dept_no;

11. Select cust_firstname,cust_lastname ,loan_id from cust_049,loan_049 where cust_049.cust_id=loan_049.cust_id;
