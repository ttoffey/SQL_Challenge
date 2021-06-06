-- List the following details of each employee: employee number, last name, first name, sex, salary
SELECT e.emp_no as Employee_Number, e.last_name as Employee_Last_Name, e.first_name as Employee_First_Name, 
	e.sex as Gender, s.salary as Salary 
FROM employees as e
LEFT JOIN salaries as s
ON e.emp_no = s.emp_no;

-- List first name, last name and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE (cast(hire_date AS VARCHAR) LIKE '1986%'); 

--List the manager of each department with the following information -- employee number, last name, first name and department name
SELECT e.emp_no as Employee_Number, e.last_name as Manager_Last_Name, e.first_name as Manager_First_Name, d.dept_name as Department_Name
FROM dept_manager as dm
LEFT JOIN departments as d
ON dm.dept_no = d.dept_no
LEFT JOIN employees as e
ON dm.emp_no = e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, department name
SELECT e.emp_no as Employee_Number, e.last_name as Employee_Last_Name, e.first_name as Employee_First_Name, d.dept_name as Department_Name
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no;

--List the first name, last name and sex for employees whose first name is "Hercules" and last names begin with "B".
SELECT first_name as Employee_First_Name, last_name as Employee_Last_Name, sex as Gender from employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name and department name.
SELECT e.emp_no as Employee_Number, e.last_name as Employee_Last_Name, first_name as Employee_First_Name, d.dept_name as Department_Name
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no 
WHERE d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, incuding their employee number, last name, first name and department name.
SELECT e.emp_no as Employee_Number, e.last_name as Employee_Last_Name, first_name as Employee_First_Name, d.dept_name as Department_Name
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no 
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share the last name.
SELECT DISTINCT last_name as Last_Name, COUNT(last_name) as Count
FROM employees
GROUP BY Last_Name
ORDER BY Count DESC;



