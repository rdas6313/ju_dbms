select dept_code as department_code ,min(basic) as minimum,max(basic) as maximum,round(avg(basic),2) as average from employee group by dept_code order by dept_code;

select dept_code as department_code,count(*) as female_count from employee where sex = 'F' group by dept_code order by dept_code;

select dept_code as department_code, city ,count(*) as emp_count from employee group by dept_code,city order by dept_code;

select dept_code,desig_code,count(*) as emp_count from employee where extract(year from jn_date)=2022 group by dept_code,desig_code order by emp_count;

select dept_code,sum(basic) as total from employee where sex = 'M' group by dept_code having sum(basic) > 50000 order by total desc;

select emp_name,desig_desc,basic from employee e,designation d where e.desig_code = d.desig_code;

select emp_name,desig_desc,dept_name,basic from employee e,designation d,department de where e.desig_code = d.desig_code and e.dept_code = de.dept_code;	

select dept_code from department d1 where not exists (select * from employee e2 where e2.dept_code = d1.dept_code );

select distinct dept_name from employee e inner join department d on e.dept_code = d.dept_code; 


select dept_name from department where dept_code in (select dept_code from employee group by dept_code having count(*) > 10);

select distinct dept_code from employee where basic = (select max(basic) from employee);

select d.dept_name,count(*) as count_manager from employee e,department d,designation de where e.dept_code=d.dept_code and e.desig_code=de.desig_code and de.desig_desc='Manager' group by d.dept_name;

select basic from employee order by basic desc offset 0 row fetch next 1 row only;

select basic from employee order by basic asc offset 0 row fetch next 1 row only;

select * from (select dept_code,sum(basic) as total_basic from employee group by dept_code) where total_basic=(select max(total_basic) from (select dept_code,sum(basic) as total_basic from employee group by dept_code));

select * from (select dept_code,round(avg(basic),2) as avg_basic from employee group by dept_code) where avg_basic = (select max(avg_basic) from (select dept_code,round(avg(basic),2) as avg_basic from employee group by dept_code));

select * from (select dept_code,count(*) as count_emp from employee group by dept_code) where count_emp = (select max(count_emp) from (select dept_code,count(*) as count_emp from employee group by dept_code));

INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP015', 'Jane Smith', 'DEPT002', 'DESIG0011', 'F', '456 Elm St', 'Othertown', 'Otherstate', '654321', 60000, TO_DATE('2022-02-20', 'YYYY/MM/DD/'));

delete from employee where desig_code='123';

select emp_name from employee e1 where sex='F' and basic > (select avg(basic) from employee e2 where e1.dept_code = e2.dept_code );

select count(*) as count_female_manager from employee e, designation d where e.desig_code = d.desig_code and e.sex = 'F' and d.desig_desc = 'Manager';