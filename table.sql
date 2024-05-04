create table designation (desig_code char(16) primary key,desig_desc char(20) not null);
create table department (dept_code char(16) primary key,dept_name char(20) not null);
create table employee (emp_code char(16) primary key,emp_name char(20),dept_code char(16),desig_code char(16),sex char(1),address char(25),city char(20),state char(20),pin char(6),basic number,jn_date date);