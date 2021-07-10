----------------------------------------
/*'HR' database--*/
------------------------------------------

/*Create the tables*/

CREATE TABLE EMPLOYEES (
                          EMP_ID CHAR(9) NOT NULL,
                          F_NAME VARCHAR(15) NOT NULL,
                          L_NAME VARCHAR(15) NOT NULL,
                          SSN CHAR(9),
                          B_DATE DATE,
                          SEX CHAR,
                          ADDRESS VARCHAR(30),
                          JOB_ID CHAR(9),
                          SALARY DECIMAL(10,2),
                          MANAGER_ID CHAR(9),
                          DEP_ID CHAR(9) NOT NULL,
                          PRIMARY KEY (EMP_ID)
                        );

CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL,
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID)
                          );

CREATE TABLE JOBS (
                    JOB_IDENT CHAR(9) NOT NULL,
                    JOB_TITLE VARCHAR(50) ,
                    MIN_SALARY DECIMAL(10,2),
                    MAX_SALARY DECIMAL(10,2),
                    PRIMARY KEY (JOB_IDENT)
                  );

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL,
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP)
                          );

CREATE TABLE LOCATIONS (
                          LOCT_ID CHAR(9) NOT NULL,
                          DEP_ID_LOC CHAR(9) NOT NULL,
                          PRIMARY KEY (LOCT_ID,DEP_ID_LOC)
                        );

/*Insert Data Into Tables*/

insert into EMPLOYEES values 
(1001, 'John',	'Thomas', 123456, '1/9/1976', 'M', '5631 Rice, OakPark, IL', 100, 100000, 30001, 2),
(1002, 'Alice', 'James', 123457, '7/31/1972', 'F', '980 Berry ln, Elgin,IL', 200, 80000, 30002,	5),
(1003, 'Steve', 'Wells', 123458, '8/10/1980', 'M',	'291 Springs, Gary,IL',	300, 50000, 30002,	5),
(1004, 'Santosh', 'Kumar', 123459, '7/20/1985',	'M', '511 Aurora Av, Aurora,IL', 400, 60000, 30004,	5),
(1005,	'Ahmed', 'Hussain', 123410,	'1/4/1981',	'M', '216 Oak Tree, Geneva,IL',500, 70000, 30001, 2),
(1006, 'Nancy', 'Allen', 123411, '2/6/1978', 'F', '111 Green Pl, Elgin,IL', 600, 90000, 30001, 2),
(1007, 'Mary', 'Thomas', 123412, '5/5/1975', 'F', '100 Rose Pl, Gary,IL',	650, 65000,	30003, 7),
(1008, 'Bharath','Gupta', 123413, '5/6/1985', 'M', '145 Berry Ln, Naperville,IL', 660, 65000, 30003,	7),
(1009, 'Andrea', 'Jones', 123414, '7/9/1990', 'F', '120 Fall Creek, Gary,IL', 234, 70000, 30003,	7),
(1010, 'Ann', 'Jacob', 123415, '3/30/1982',	'F', '111 Britany Springs,Elgin,IL',220, 70000, 30004, 5)

Insert into JOB_HISTORY values
(1001,	'8/1/2000',	100, 2),
(1002,	'8/1/2001',	200, 5),
(1003,	'8/16/2001', 300, 5),
(1004,	'8/16/2000', 400, 5),
(1005,	'5/30/2000', 500, 2),
(1006,	'8/16/2001', 600, 2),
(1007,	'5/30/2002', 650, 7),
(1008,	'5/6/2010', 660, 7),
(1009,	'8/16/2016', 234, 7),
(1010, '8/16/2016', 220, 5)

Insert into JOBS values
(100, 'Sr. Architect', 60000, 100000),
(200, 'Sr.Software Developer', 60000, 80000),
(300, 'Jr.Software Developer', 40000, 60000),
(400, 'Jr.Software Developer', 40000, 60000),
(500, 'Jr. Architect', 50000, 70000),
(600, 'Lead Architect', 70000, 100000),
(650, 'Jr. Designer', 60000,	70000),
(660, 'Jr. Designer', 60000,	70000),
(234, 'Sr. Designer', 70000,	90000),
(220, 'Sr. Designer', 70000,	90000)

Insert into DEPARTMENTS values
(2,'Architect Group', 30001, 'L0001'),
(5, 'Software Group', 30002, 'L0002'),
(7, 'Design Team', 30003, 'L0003')

insert into LOCATIONS values
('L0001', 2),
('L0002', 5),
('L0003', 7)


