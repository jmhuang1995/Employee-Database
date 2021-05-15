/* 1 List the following details of each employee: employee number, last name, first name, sex, and salary.*/
SELECT employee.emp_no, employee.last_name, employee.first_name,employee.gender,salary.salary
from employee JOIN salary on employee.emp_no = salary.emp_no

/* 2 List first name, last name, and hire date for employees who were hired in 1986. */

SELECT first_name, last_name, hire_date
FROM employee
WHERE extract(year from hire_date) = 1986

/*3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. */

Select dept_manager.depot_no, departments.dept_name, dept_manager.emp_no, employee.first_name, employee.last_name
From dept_manager
JOIN departments on dept_manager.depot_no = departments.depot_no
JOIN employee on dept_manager.emp_no = employee.emp_no

/*4 List the department of each employee with the following information: employee number, last name, first name, and department name.*/
select dept_emp.emp_no,dept_emp.depot_no, departments.dept_name, employee.last_name, employee.first_name
FROM dept_emp
Join employee on dept_emp.emp_no = employee.emp_no
Join departments on dept_emp.depot_no = departments.depot_no

/* 5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." */
select first_name, last_name,gender
From employee
where first_name = 'Hercules' AND last_name LIKE 'B%'

/* 6 List all employees in the Sales department, including their employee number, last name, first name, and department name.*/
select employee.emp_no, employee.first_name, employee.last_name,departments.dept_name
FROM dept_emp
JOIN employee on dept_emp.emp_no = employee.emp_no
JOIN departments on dept_emp.depot_no = departments.depot_no
Where departments.dept_name = 'Sales'

/* 7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.*/
select employee.emp_no,employee.last_name,employee.first_name,departments.dept_name
From dept_emp
Join employee on dept_emp.emp_no = employee.emp_no
Join departments on dept_emp.depot_no = departments.depot_no
WHere departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

/* 8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. */
select last_name, count(last_name) as "frequency"
from employee
group by last_name
Order by "frequency" DESC
