--DELIVERABLE 1

SELECT e.emp_no,
e.first_name,
e.last_name,
ts.title,
ts.from_date,
ts.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles as ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;
DROP TABLE retirement_titles;

SELECT e.emp_no,
e.first_name,
e.last_name,
ts.title,
ts.from_date,
ts.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles as ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY emp_no, to_date DESC;

--Retrieve the number of people in each job title who are about to retire
SELECT COUNT(ut.title), ut.emp_no
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY emp_no, title
ORDER BY emp_no DESC;
--Table is wrong, must drop
DROP TABLE retiring_titles;

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY emp_no, title
ORDER BY emp_no DESC;
--Still wrong
DROP TABLE retiring_titles;

SELECT COUNT(ut.title)
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY title;
SELECT * FROM retiring_titles;
--Getting closer but still wrong
DROP TABLE retiring_titles;

SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY title;
--Got the data correct now just to order
DROP TABLE retiring_titles;
--Table in final correct form
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY title
ORDER BY COUNT(*) DESC;

--DELIVERABLE 2
--Retrieve employees eligible for mentorship
SELECT DISTINCT ON (emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ts.title
INTO membership_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no DESC;
--should be ascending order
DROP TABLE membership_eligibility;

--Retrieve employees eligible for mentorship
SELECT DISTINCT ON (emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ts.title
INTO membership_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;
