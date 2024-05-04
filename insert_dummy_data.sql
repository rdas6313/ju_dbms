INSERT INTO designation (desig_code, desig_desc) VALUES ('DESIG001', 'Manager');
INSERT INTO designation (desig_code, desig_desc) VALUES ('DESIG002', 'Executive');
INSERT INTO designation (desig_code, desig_desc) VALUES ('DESIG003', 'Officer');
INSERT INTO designation (desig_code, desig_desc) VALUES ('DESIG004', 'Clerk');
INSERT INTO designation (desig_code, desig_desc) VALUES ('DESIG005', 'Helper');

INSERT INTO department (dept_code, dept_name) VALUES ('DEPT001', 'Personnel');
INSERT INTO department (dept_code, dept_name) VALUES ('DEPT002', 'Production');
INSERT INTO department (dept_code, dept_name) VALUES ('DEPT003', 'Purchase');
INSERT INTO department (dept_code, dept_name) VALUES ('DEPT004', 'Finance');
INSERT INTO department (dept_code, dept_name) VALUES ('DEPT005', 'Research');


-- Insert dummy data into the designation table using separate INSERT statements


INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP001', 'John Doe', 'DEPT001', 'DESIG001', 'M', '123 Main St', 'Anytown', 'Anystate', '123456', 50000, TO_DATE('2022-01-15', 'YYYY/MM/DD/'));

INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP002', 'Jane Smith', 'DEPT002', 'DESIG002', 'F', '456 Elm St', 'Othertown', 'Otherstate', '654321', 60000, TO_DATE('2022-02-20', 'YYYY/MM/DD/'));

INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP003', 'Mike Johnson', 'DEPT001', 'DESIG003', 'M', '789 Oak St', 'Somewhere', 'Somestate', '135246', 55000, TO_DATE('2022-03-25', 'YYYY/MM/DD/'));


INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP004', 'Emily Brown', 'DEPT003', 'DESIG001', 'F', '567 Pine St', 'Newville', 'Newstate', '987654', 52000, TO_DATE('2022-04-10', 'YYYY/MM/DD/'));

INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP005', 'David Wilson', 'DEPT002', 'DESIG002', 'M', '890 Cedar St', 'Oldtown', 'Oldstate', '456789', 58000, TO_DATE('2022-05-15', 'YYYY/MM/DD/'));

INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
values ('EMP006', 'Sarah Taylor', 'DEPT001', 'DESIG003', 'F', '234 Maple St', 'Smalltown', 'Smallstate', '369852', 53000, TO_DATE('2022-06-20', 'YYYY/MM/DD/'));

INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP007', 'Michaela Clark', 'DEPT003', 'DESIG001', 'F', '876 Birch St', 'Largetown', 'Largestate', '258963', 51000, TO_DATE('2022-07-25', 'YYYY/MM/DD/'));

INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP008', 'Matthew Turner', 'DEPT001', 'DESIG002', 'M', '345 Walnut St', 'Hometown', 'Homestate', '147258', 59000, TO_DATE('2022-08-30', 'YYYY/MM/DD/'));

INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP009', 'Daniel Miller', 'DEPT002', 'DESIG003', 'M', '789 Pineapple St', 'Cityville', 'Citystate', '159357', 54000, TO_DATE('2022-09-05', 'YYYY/MM/DD/'));

INSERT INTO employee (emp_code, emp_name, dept_code, desig_code, sex, address, city, state, pin, basic, jn_date)
VALUES ('EMP010', 'Olivia Scott', 'DEPT003', 'DESIG001', 'F', '234 Cherry St', 'Countryville', 'Countrystate', '369147', 53000, TO_DATE('2022-10-10', 'YYYY/MM/DD/'));

