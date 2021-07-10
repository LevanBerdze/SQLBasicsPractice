----------------------------------------
/*Exercise--*/
------------------------------------------

/*Exercise 1: String Patterns*/

/*Problem:1 Retrieve all employees whose address is in Elgin,IL.*/
Select F_NAME, L_NAME, ADDRESS
from EMPLOYEES
where ADDRESS like '%Elgin%'

/*Problem: 2 Retrieve all employees who were born during the 1970's.*/
select F_Name, L_Name, B_DATE
from EMPLOYEES
where B_DATE like '197%'

/*Problem: 3 Retrieve all employees in department 5 whose salary is between 60000 and 70000.*/
select *
From EMPLOYEES
where DEP_ID = 5 and SALARY between 60000 and 70000

/*Exercise 2: Sorting*/

/*Problem: 1 Retrieve a list of employees ordered by department ID.*/
select *
from EMPLOYEES
order by DEP_ID

/*Problem: 2 Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.*/
select *
from EMPLOYEES
order by DEP_ID desc, L_NAME desc

/*Exercise 3: Grouping*/

/*Problem: 1 For each department ID retrieve the number of employees in the department.*/
select DEP_ID, count(DEP_ID)as NUMBER_OF_EMPLOYEES
from EMPLOYEES
group by DEP_ID

/*Problem: 2 For each department retrieve the number of employees in the department, and the average employee salary in the department and order the result set by Average Salary*/
select  DEP_ID, count(DEP_ID)as Number_OF_Employees, avg (SALARY) as Avg_Salary_Of_Dep
from EMPLOYEES
group by DEP_ID
order by Avg_Salary_Of_Dep
/*limit the result to departments with fewer than 4 employees...*/
select  DEP_ID, count(DEP_ID)as Number_OF_Employees, avg (SALARY) as Avg_Salary_Of_Dep
from EMPLOYEES
group by DEP_ID
having count(Dep_ID) < 4
order by Avg_Salary_Of_Dep



