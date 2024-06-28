# SQL-Challenge

This Challenge is divided into three parts: Data Modeling, Data Engineering, and Data Analysis.

## Data Modeling

In this part, I inspected the CSV files, and then sketched an Entity Relationship Diagram (ERD) of the tables using a tool called [QuickDBD](https://bootcampspot.instructure.com/courses/5831/assignments/79484?module_item_id=1251786#:~:text=a%20tool%20like-,QuickDBD,-Links%20to%20an).

## Data Engineering

For this part, I exported the ERD sketch I made as a .sql file and used that to create table schemas for each of the six CSV files, and then imported the CSV into their corresponding SQL tables.

## Data Analysis

For this part, I created views of the following:

1. The employee number, last name, first name, sex, and salary of each employee.

2. The first name, last name, and hire date for the employees who were hired in 1986.

3. The manager of each department along with their department number, department name, employee number, last name, and first name.

4. The department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. First name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. Each employee in the Sales department, including their employee number, last name, and first name.

7. Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. The frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

---

## Repository Files and Folders

Besides this README file, there are nine other files in two folders:

*EmployeeSQL* - One of the two folders, which contains two .sql files, the image file of the ERD sketch, and the other folder named *data*:

- **Data Analysis.sql**: The sql file that contains the queries used in the Data Analysis part of this challenge.

- **QuickDBD-sql-challenge.sql**: The sql file that contains the queries used to generate the table schemas in the Data Engineering part of this challenge.

- **sql-challenge-ERD_via_QuickDBD.png**: The image file containing the ERD sketch made in the Data Modeling part of this challenge.

*data* - The folder containing all the following six CSV files:

- **departments.csv**: The CSV table containing all the departments within the company.

- **dept_emp.csv**: The CSV table listing the departments in which each employee works.

- **dept_manager.csv**: The CSV table listing the departments in which each manager works.

- **employees.csv**: The CSV table containing the personal information of all the employees.

- **salaries.csv**: The CSV table listing the salaries of each employee.

- **titles.csv**: The CSV table containing all the titles that an employee could hold within the company.

---

## References

The PostgreSQL Global Development Group. (2023, September 14). *PostgreSQL 16.0 Documentation*. PostgreSQL Documentation. <https://www.postgresql.org/docs/16/index.html>
