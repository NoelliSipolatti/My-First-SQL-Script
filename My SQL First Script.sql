/*First Day MYSQL Script
Creating and use a database*/
Create Database Students; 
Use Students;

/*Creating Tables*/
CREATE TABLE grant_info (
first_name char(20) not null,
last_name char(20) not null,
student_id int not null PRIMARY KEY,
aid_awarded int not null
);

/*Altering Tables - Add information*/
Alter Table grant_info
Add Federal int null
;

/*Insertind values to a table*/
Insert INTO grant_info (first_name, last_name, student_ID, aid_awarded, Federal)
Values ('Jessica', 'Benkaroun', 424242, 20000, 324);

/*How to show everything from the table, or just one of them if you put the name instead of "*"*/
Select * from grant_info;

/*We will do that, only in case we did not create the PK from the begining*/ 
alter table grant_info
ADD Constraint pk_student_id PRIMARY KEY (student_id);

/*To explain and show the data types of the table*/
explain grant_info;

Create Table Course (
course_ID int (10) PRIMARY KEY, 
course_name char(20),
student_ID int not null,
foreign key (student_ID) REFERENCES grant_info (student_ID)
);

explain Course;