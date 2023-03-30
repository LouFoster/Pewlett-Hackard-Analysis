-- Create new table for retiring employees
DROP TABLE retirement_titles
SELECT employees.emp_no,
     employees.first_name,
     employees.last_name,
	 titles.title,
	 titles.from_date,
	 titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employees.emp_no;
--select * from titles
SELECT * FROM retirement_titles


-- Use the DISTINCT ON statement to create a table 
-- that contains the most recent title of each employee
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO current_title
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, title DESC;

SELECT * FROM current_title;

--Create new table for unique titles

SELECT retirement_titles.emp_no, 
	retirement_titles.first_name, 
	retirement_titles.last_name,
	current_title.title
INTO unique_titles
FROM retirement_titles
INNER JOIN current_title
ON retirement_titles.emp_no = current_title.emp_no
WHERE to_date = ('9999-01-01')
ORDER BY retirement_titles.to_date DESC, retirement_titles.emp_no;

SELECT * FROM unique_titles;

--retrieve the number of titles from the Unique Titles table.
SELECT COUNT (title)
FROM unique_titles


--Create the retiring_titles table
	SELECT COUNT (unique_titles.title), title
	INTO retiring_titles
	FROM unique_titles
	GROUP BY unique_titles.title
	ORDER BY unique_titles.title DESC;

SELECT * FROM retiring_titles
ORDER BY count DESC

--Deliverable 2 - The Employees Eligible for the Mentorship Program
-- create a Mentorship Eligibility table that holds the employees
-- who are eligible to participate in a mentorship program
--create a Mentorship Eligibility table that holds the employees 
--who are eligible to participate in a mentorship program
CREATE TABLE dept_emp (
	 emp_no INT NOT NULL,
     dept_no VARCHAR(4) NOT NULL,
	 from_date DATE NOT NULL, 
	 to_date DATE NOT NULL,
     FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
	
SELECT * FROM dept_emp
	
-- Create new table for current employees
SELECT employees.emp_no,
     employees.first_name,
     employees.last_name,
	 employees.birth_date, 
	 dept_emp.from_date,
	 dept_emp.to_date
INTO current_employees
FROM employees 
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
ORDER BY employees.emp_no;
		
SELECT * FROM current_employees

--Create new table for eligible_titles
SELECT employees.emp_no,
     employees.first_name,
     employees.last_name,
	 employees.birth_date, 
	 titles.title,
	 titles.from_date,
	 titles.to_date
INTO eligible_titles
FROM employees 
INNER JOIN titles
ON employees.emp_no = titles.emp_no
ORDER BY employees.emp_no;
		
SELECT * FROM eligible_titles	
	
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
birth_date,
title, 
from_date
to_date
INTO eligible_employees
FROM eligible_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, title DESC;

SELECT * FROM eligible_employees;
	
--Create new table for membership eligibility
SELECT eligible_employees.emp_no, 
	eligible_employees.first_name, 
	eligible_employees.last_name,
	eligible_employees.birth_date,
	eligible_titles.title,
	eligible_titles.from_date,
	eligible_titles.to_date
INTO membership_eligibility
FROM eligible_employees
INNER JOIN eligible_titles
ON eligible_employees.emp_no = eligible_titles.emp_no
WHERE eligible_employees.birth_date BETWEEN ('1965-01-01') AND ('1965-12-31')
ORDER BY eligible_titles.emp_no ASC, eligible_employees.birth_date DESC; 

SELECT * FROM membership_eligibility;





--
-- Deliverable 3. Summsary. Additional query. Retiring_years
SELECT DISTINCT ON (em.emp_no) em.emp_no AS "emp_no", 
					em.first_name, 
					em.last_name, 
					em.birth_date,
					de.from_date, 
					de.to_date, 
					ti.title
INTO retiring_years
FROM employees AS em
	INNER JOIN dept_emp AS de 
		ON (em.emp_no = de.emp_no)
	INNER JOIN titles AS ti 
		ON (em.emp_no = ti.emp_no)
	WHERE de.to_date = ('9999-01-01') AND
	(em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY "emp_no";

SELECT COUNT(emp_no), 
	   EXTRACT(YEAR FROM birth_date) AS birth_year
FROM retiring_years
GROUP BY birth_year
ORDER BY birth_year ASC;

-- Deliverable 3. Summary. Additional query 2. Mentorship_eligibilty_dept
SELECT count(title),
		d.dept_name
INTO membership_eligibility_dept
FROM membership_eligibility AS me
	INNER JOIN dept_emp AS de ON (me.emp_no = de.emp_no)
	INNER JOIN departments AS d ON (d.dept_no = de.dept_no)
GROUP BY d.dept_name

SELECT * FROM membership_eligibility_dept


