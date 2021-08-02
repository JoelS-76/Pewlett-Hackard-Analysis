--Find likely first round of retiring people
SELECT DISTINCT ON (emp_no)
rt.emp_no,
rt.first_name,
rt.last_name,
rt.title,
de.dept_no,
e.birth_date
INTO dept_titles_1952
FROM retirement_titles AS rt
INNER JOIN employees AS e
ON (rt.emp_no = e.emp_no)
INNER JOIN dept_emp AS de
ON (rt.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1952-12-31')
ORDER BY emp_no;

--Isolate the Senior employees in the top 3 departments losing people
SELECT dt.emp_no,
dt.first_name,
dt.last_name,
dt.dept_no,
dt.title
INTO mentor_dept 
FROM dept_titles_1952 AS dt
WHERE (dt.dept_no = 'd004') 
OR (dt.dept_no = 'd005')
OR (dt.dept_no = 'd007')
ORDER BY dept_no;

--Filter to show only senior employees in those departments
SELECT md.emp_no,
md.first_name,
md.last_name,
md.dept_no,
md.title
INTO mentor_focus
FROM mentor_dept AS md
WHERE (md.title = 'Senior Engineer')
OR (md.title = 'Senior Staff')
ORDER BY dept_no;

--Join membership_eligibility with dept_emp
SELECT me.emp_no,
me.first_name,
me.last_name,
me.title,
de.dept_no
INTO membership_dept
FROM membership_eligibility AS me
INNER JOIN dept_emp as de
ON (me.emp_no = de.emp_no)
ORDER BY dept_no;

--Filter the group for the top 3 departments
SELECT md.emp_no,
md.first_name,
md.last_name,
md.title,
md.dept_no
INTO membership_focus
FROM membership_dept AS md
WHERE (md.dept_no = 'd004')
OR (md.dept_no = 'd005')
OR (md.dept_no = 'd007')
ORDER BY dept_no;