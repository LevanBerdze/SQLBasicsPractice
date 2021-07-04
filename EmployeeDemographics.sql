/* Create Table Named EmployeeDemographics*/
Create Table EmployeeDemographics (EmployeeId int, FirstName varchar(50), LastName varchar(50), Age int, Gender varchar(50))


/* Crete Table Named EmployeeSalary */
Create Table EmployeeSalary (EmployeeId int, JobTitle varchar(50), Salary int)

/* Inserting Data Into tables */
insert into EmployeeDemographics values
(1, 'Victor', 'Hernandez', 34, 'Male'),
(2, 'Levam', 'Berdzenishvili', 31, 'Male'),
(3, 'William', 'Morales', 35, 'Male'),
(4, 'Antonio', 'Dasilva', 36, 'MAle'),
(5, 'Keaysha', 'Cosme', 38, 'Female'),
(6, 'Suzi', 'Makombo', 24, 'Female'),
(7, 'Hugo', 'Tilano', 41, 'Male'),
(8, 'Nona', 'Berdzenishvili', 45, 'Female')

/* Inserting Data Into Another Table */
Insert into EmployeeSalary values
(1, 'PersonalAssistant', 55000),
(2, 'DataScientist', 95000),
(3, 'RegisteredNurse', 87000),
(4, 'NursePracticioner', 140000),
(5, 'Marketing', 75000),
(6, 'Markering', 70000),
(7, 'FrontDesk', 60000),
(8, 'Accountant',80000)

/* Answer Some Qestions From Following Tables Using Select, From, where, Group by, Order by Statments 
.....................................................................................................
1) How many employees does company have? 8
2) How many male how many female employees are working in the company? 3 FEMALE, 5 MALE
3) who is the yonges employee? Suzi Makombo
4) who is the oldest employee? Nona Berdzenishvili
5) who is the yongest male employee? Levan Berdzenishvili
6) who is the oldest male employee? Hugo Tilano
7) who is yongest female emplpyee? Suzi Makombo
8) who is the oldest female employee? Nona Berdzenishvili
9) what is the avarage employee's age? 35
10) Higest salary amount? 140,000
11) Lowest salary amount? 55,000
12 what is avarage salary? 82750
......................................................................................................
*/

/* 1) How many employees does company have? ANSWER: 8 */
Select count(EmployeeId) as NumberOfEmployees
from EmployeeDemographics

select EmployeeID
from EmployeeDemographics

select distinct(EmployeeId)
from employeeDemographics

/* 2) How many male how many female employees are working in the company? ANSWER: 3 FEMALE, 5 MALE */
Select distinct(gender), count(gender)
from EmployeeDemographics
group by Gender

/* 3) who is the yonges employee? ANSWER: Suzi Makombo */
Select FirstName, LastName, Age
from EmployeeDemographics
order by Age 

/* 4) who is the oldest employee? ANSWER: Nona Berdzenishvili */
Select FirstName, LastName, Age
from EmployeeDemographics
order by Age Desc

/* 5) who is the yongest male employee? Answer: Levan Berdzenishvili */
Select Gender, FirstName, LastName, Age
From EmployeeDemographics
where Gender = 'Male'
order by age

/* 6) who is the oldest male employee? Answer: Hugo Tilano*/
Select FirstName, LastName, Age, Gender
from EmployeeDemographics
where Gender = 'Male'
order by age Desc

/* 7) who is yongest female emplpyee? Answer: Suzi Makombo */
Select FirstName, LastName, Gender, Age
from EmployeeDemographics
Where Gender = 'Female'
order by age

/*8) who is the oldest female employee? Answer: Nona Berdzenishvili*/
select FirstName, LastName, Age, Gender
from EmployeeDemographics
where Gender = 'Female'
order by Age Desc

/* 9) what is the avarage employee's age? Answer 35 */
select avg(age)
from EmployeeDemographics

/* 10) Higest salary amount? Answer: 140,000 */
select Salary
from  EmployeeSalary
order by salary desc
select Max(salary)
from EmployeeSalary

/* 11) Lowest salary amount? Answer: 55,000  */
select salary
from EmployeeSalary
order by salary 

select min(salary)
from EmployeeSalary

/* 12 what is avarage salary? Answer: 82750 */
select avg(salary)
from EmployeeSalary
