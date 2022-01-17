INSERT INTO employees VALUE
(1,"tomas","Garcia","M",11-12-2020,11-12-2020)


INSERT INTO employees (emp_no,first_name, last_name,
gender, birth_date, hire_date) values
(1,"tomas","Garcia","M","2020-11-12","2011-12-05"),
(2,"pablo","motos","M","2020-11-12","2011-12-05"),
(3,"erick","Garcia","M","2020-11-12","2011-12-05"),
(4,"pau","Garcia","M","2020-11-12","2011-12-05"),
(5,"roger","puigdemasa","M","2020-11-12","2011-12-05"),
(6,"sergio","asbdhk","M","2020-11-12","2011-12-05"),
(7,"alexander","Garcia","M","2020-11-12","2011-12-05"),
(8,"antonio","Garcia","M","2020-11-12","2011-12-05"),
(9,"tomas","Garcia","M","2020-11-12","2011-12-05"),
(10,"pablo","Garcia","M","2020-11-12","2011-12-05"),
(11,"maia","Garcia","M","2020-11-12","2011-12-05"),
(12,"anna","Garcia","M","2020-11-12","2011-12-05"),
(13,"maria","Garcia","M","2020-11-12","2011-12-05"),
(14,"gavriela","Garcia","M","2020-11-12","2011-12-05"),
(15,"sara","Garcia","M","2020-11-12","2011-12-05");

INSERT INTO salaries (emp_no,salary,from_date,to_date) values
(1,5000,"2001-11-02","2012-12-02"),
(2,7000,"2001-11-03","2012-12-03"),
(3,9000,"2001-11-04","2012-12-04"),
(4,11000,"2001-11-05","2012-12-05"),
(5,13000,"2001-11-06","2012-12-06"),
(6,20000,"2001-11-07",now()),
(7,25000,"2001-11-08",now()),
(8,5000,"2001-11-09",now()),
(9,6000,"2001-11-10",now()),
(10,25000,"2001-11-11",now()),
(11,32000,"2001-11-12",now()),
(12,40000,"2001-11-13",now()),
(13,45000,"2001-11-14",now()),
(14,49000,"2001-11-14",now()),
(15,50000,"2001-11-02",now());

INSERT INTO salaries (emp_no,salary,from_date,to_date) values
(1,50000,"2012-12-02","2022-12-02"),
(2,50000,"2012-12-03","2022-12-03"),
(3,50000,"2012-12-04","2022-12-04"),
(4,50000,"2012-12-05","2022-12-05"),
(5,50000,"2012-12-06","2022-12-06");


INSERT INTO dept_emp (emp_no,dept_no,from_date,to_date) values
(1,"MANT","2012-12-06","2022-12-06"),
(1,"OPER","2012-12-06","2022-12-06"),
(2,"OPER","2012-12-06","2022-12-06"),
(2,"MANT","2012-12-06","2022-12-06"),
(3,"OPER","2012-12-06","2022-12-06"),
(4,"OPER","2012-12-06","2022-12-06"),
(5,"OPER","2012-12-06","2022-12-06"),
(6,"OPER","2012-12-06","2022-12-06"),
(6,"MANT","2012-12-06","2022-12-06"),
(7,"OPER","2012-12-06","2022-12-06"),
(8,"OPER","2012-12-06","2022-12-06"),
(9,"MANT","2012-12-06","2022-12-06"),
(9,"OPER","2012-12-06","2022-12-06");


*
INSERT INTO departments (dept_no,dept_name) values
("MANT","Mantenimiento"),
("OPER","Operarios"),
("MARK","Marketing"),
("RRHH","recursos humanos");

INSERT INTO dept_manager (emp_no,dept_no,from_date,to_date) values
(10,"MARK","2012-12-06","2022-12-06"),
(11,"MARK","2012-12-06","2022-12-06"),
(12,"RRHH","2012-12-06","2022-12-06"),
(13,"RRHH","2012-12-06","2022-12-06"),
(14,"MARK","2012-12-06","2022-12-06"),
(15,"MARK","2012-12-06","2022-12-06");

INSERT INTO titles (emp_no,title ,from_date, to_date ) values
(1,"Electrico","2006-11-12","2011-12-05"),
(2,"Marketing","2006-11-12","2011-12-05"),
(3,"producion","2006-11-12","2011-12-05"),
(4,"manipulacion de alimentos","2020-11-12","2011-12-05"),
(5,"automaticacion","2006-11-12","2011-12-05"),
(6,"informatica","2006-11-12","2011-12-05"),
(7,"perruqueria","2006-11-12","2011-12-05"),
(8,"administracion","2006-11-12","2011-12-05"),
(9,"administracion","2006-11-12","2011-12-05"),
(10,"producion","2020-11-12","2022-12-05"),
(11,"Electrico","2020-11-12","2022-12-05"),
(12,"diseño","2020-11-12","2011-12-05"),
(13,"Marketing","2020-11-12","2022-12-05"),
(14,"Managment","2020-11-12","2020-12-05"),
(15,"Managment","2020-11-12","2020-12-05");




-- UPDATE DATA
UPDATE employees 
 SET first_name ="cambio"
 WHERE first_name="alexander"
 AND last_name="Garcia"
 AND birth_date="2020-11-12";

 UPDATE departments 
 SET dept_no ="MAN"
WHERE dept_no ="MANT";

 UPDATE departments 
 SET dept_no ="MAR"
WHERE dept_no ="MARK";

 UPDATE departments 
 SET dept_no ="OPE"
WHERE dept_no ="OPER";

 UPDATE departments 
 SET dept_no ="RH"
WHERE dept_no ="RRHH";


-- GET DATA
SELECT 
employees.first_name ,
employees.last_name ,
salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no =salaries.emp_no
AND salaries.salary >= 20000;


SELECT 
employees.first_name ,
employees.last_name ,
salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no =salaries.emp_no
AND salaries.salary < 10000;


SELECT 
employees.first_name ,
employees.last_name ,
salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no =salaries.emp_no
AND salaries.salary BETWEEN 14000 AND 50000;


SELECT COUNT(*) FROM employees;


SELECT employees.first_name,
employees.last_name,
dept_emp.dept_no,
COUNT(dept_emp.emp_no)
FROM employees
INNER JOIN dept_emp
WHERE dept_emp.emp_no=employees.emp_no;

SELECT * FROM titles
WHERE from_date LIKE "2020%";

SELECT employees.first_name,
employees.last_name,
dept_emp.dept_no
FROM employees
INNER JOIN dept_emp
WHERE dept_emp.emp_no=employees.emp_no;

SELECT employees.first_name,
employees.last_name,
dept_manager.dept_no
FROM employees
INNER JOIN dept_manager
WHERE dept_manager.emp_no=employees.emp_no;

SELECT first_name,COUNT(first_name) FROM employees GROUP BY first_name;