# SQL_Challenge

Problems
	• Issues with uploading data after importing QuickDBD into Postgres.
		○ DEPARTMENTS table uploaded OK but DEPT_EMP table did not; 
		Error Message: Insert or update table "dept_emp" violates foreign key constraint "fk_dept_emp_emp_no"
		Detail: Key (emp_no) - (10001) is not present in table EMPLOYEES. 
		This is not correct; emp_no 10001 is present in EMPLOYEES table; EMPLOYEES table is not sorted by emp_no? 
		
		RESOLUTION:  Removed foreign key constraints and add in after data uploaded


After Data Upload
ALTER TABLE "employees"
ADD CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no");

ALTER TABLE "dept_emp" 
ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN_KEY ("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE dept_manager ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY ("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE employees ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY ("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE salaries ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY ("emp_no")
REFERENCES employees ("emp_no");

ALTER TABLE dept_emp ADD CONSTRAINT "pk_dept_emp" PRIMARY KEY (emp_no, dept_no);
