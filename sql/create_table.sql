create table departments(
		depot_no varchar(30) primary key NOT NULL,
		dept_name varchar(30)
		);

create table dept_emp(
		emp_no int NOT NULL,
		depot_no varchar(30) NOT NULL,
		from_date DATE not NULL,
		to_date DATE not NUll,
		foreign key(emp_no) references employee(emp_no),
		foreign key(depot_no) references departments(depot_no)

		);

create table dept_manager(
		depot_no varchar(30) NOT NULL,
		emp_no int NOT NULL,
		from_date DATE not NULL,
		to_date DATE not NULL,
		foreign key(emp_no) references employee(emp_no),
		foreign key(depot_no) references departments(depot_no)
		);

create table employee(
	emp_no int Primary key NOT NULL,
	birth_date DATE NOT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	gender varchar(1) NOT NULL,
	hire_date DATE NOT NULL
);

create table salary(
	emp_no int NOT NULL,
	salary int NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	foreign KEY(emp_no) references employee(emp_no)
	);

create table titles(
	emp_no int NOT NULL,
	title varchar(30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	foreign KEY(emp_no) references employee(emp_no)
);

update dept_manager
set to_date = CURRENT_DATE
where extract(year from to_date) = 9999;


update dept_emp
set to_date = CURRENT_DATE
where extract(year from to_date) = 9999;

update titles
set to_date = CURRENT_DATE
where extract(year from to_date) = 9999;
