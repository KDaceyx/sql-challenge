create table dept_emp(
    emp_no int,
    dept_no varchar(10),
    primary key(emp_no),
    foreign key(dept_no) references departments(dept_no)
);