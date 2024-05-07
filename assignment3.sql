Table creation:

create table department(id number primary key,name varchar(30) not null, unique(name));

create table emp (id number primary key,name varchar(30) not null,address varchar(30),city varchar(30),basic decimal(20,2) default 0,jn_date date default sysdate not null,dept_id number not null,constraint fk foreign key(dept_id) references department(id),
constraint basic_con check(basic >= 5000 and basic <= 9000),constraint upper_name check(upper(name) = name));

create table reg_leave(ltype varchar(5) not null,fdate date not null,tdate date not null,emp_id number,constraint l_fk foreign key(emp_id) references emp(id),constraint pk primary key(emp_id,fdate,tdate),
constraint lt check(ltype in ('CL','EL','ML')));

constraint violation:
insert into department values(1,'Account');
insert into emp(id,name,address,city,basic,jn_date,dept_id) values (1,'Raja','katwa','katwa',5000,to_date('01/01/2023','DD/MM/YYYY'),1);
insert into reg_leave values('XL',to_date('02/03/2023','dd/mm/yyyy'),to_date('20/04/2023','dd/mm/yyyy'),1);
update emp set basic = 600;
delete from department where id = 1;

View:
create view employee(emp_code,name,dcode,basic) as
select id,name,dept_id,basic from emp;

insert into employee values(4,'Ria',2,7000);
insert into employee values(4,'SANCHARI',2,7000);

update employee set basic = basic + 100 where emp_code = 1;

select * from emp;
drop view employee;


create view employee(emp_code,name,deptname,basic,leave_type,from_date,to_date) as
select e.id,e.name,d.name,e.basic,r.ltype,r.fdate,r.tdate from emp e,department d,reg_leave r where e.id = d.id and e.id = r.emp_id;

insert into employee values(10,'BIJAY','IT',5000,'ML',to_date('03/02/2024','dd/mm/yyyy'),to_date('03/04/2024','dd/mm/yyyy'));
update employee set basic = basic + 100 where emp_code = 2;
drop view employee;


create table dummyemp as 
select e.id as empcode,e.name as name,d.name as dept_name,e.basic as basic from emp e,department d where e.dept_id = d.id and e.dept_id = 1 and e.basic = 7000;

insert into dummyemp(empcode,name,dept_name,basic) select e.id as empcode,e.name as name,d.name as dept_name,e.basic as basic from emp e ,department d where e.dept_id=d.id and e.basic >= 7000;

alter table dummyemp add net_pay decimal(20,2);
update dummyemp set net_pay = basic*1.5;

alter table dummyemp drop column net_pay;

drop table department;
drop table reg_leave;
drop table emp;
drop table dummyemp;