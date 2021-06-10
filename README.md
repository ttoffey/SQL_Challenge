# SQL_Challenge - Employee Database: A Mystery in Two Parts

Research project involving six (6) CSV files of employee-related data. Design tables to hold the data, import the CSVs to a SQL database and answer questions listed below. (This challenge involves Data Engineering/Data Modeling and Data Analysis.)

![sql.png](sql.png)

### Objectives
    * Create ERD (Entity Relationship Diagrams) for the tables listed below. 
   
      Departments - 9 departments
      Dept_Emp - 331,603 records*
      Dept_Manager - 24 records in total including employee_id for department and department_id for the 9 Deparments. 
      Employees - 300,024 employee records
      Salaries - 300,024 employee salary records
      Titles - 7 job titles

    #### *Dept_Emp includes multiple records per employee. May be helpful to designate which department is current for employees.

* Once the ERD is completed and data is uploaded, provide the following information.

    1. List the following details of each employee: employee number, last name, first name, sex, and salary.

    2. List first name, last name, and hire date for employees who were hired in 1986.

    3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

    4. List the department of each employee with the following information: employee number, last name, first name, and department name.

    5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

    6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

        7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

        8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### Technologies Used
  pgAdmin 4
  PostgreSQL
  SQLAlchemy*
  Pandas*
  Matplotlib*

### Project Status
Base project was completed. Issues with Bonus portion (see issues below).

### Issues

1. Issues with uploading data after importing QuickDBD into PostgreSQL.
    * Removed foreign key constraints and added constraints in after upload.
    
2. Issues with Bonus portion.