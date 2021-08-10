create table departments(
	dept_no varchar(30),
	dept_name varchar(255),
	primary key(dept_no));
	
create table dept_emp(
	emp_no int,
	dept_no varchar(255),
	primary key(emp_no),
	foreign key(dept_no) references departments(dept_no));
	
create table titles(
	emp_title_id varchar(255),
	title varchar(255),
	primary key (emp_title_id));
	
create table employees(
	emp_no int,
	emp_title_id varchar(255),
	birth_date varchar(10),
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(10),
	hire_date varchar(10),
	foreign key(emp_no) references dept_emp(emp_no),
	foreign key(emp_title_id) references titles(emp_title_id));
	
create table managers(
	dept_no varchar(30),
	emp_no int,
	foreign key(dept_no) references departments(dept_no),
	foreign key(emp_no) references dept_emp(emp_no));
	
create table salaries(
	emp_no int,
	salary int,
	foreign key(emp_no) references dept_emp(emp_no));