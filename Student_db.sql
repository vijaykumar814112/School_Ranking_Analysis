CREATE DATABASE student_db;
USE student_db;
/* Write a query to create a student table with appropriate data types for stydent id, student first name,
student last name, class and age where the student last name, student first name, and student id should
be a NOT NULL constraint and the student id should be in a primary key.   */

CREATE TABLE student_table(s_id int NOT NULL PRIMARY KEY,s_fname varchar(50) NOT NULL,
s_lname varchar(50) NOT NULL,class int,age int);
/* Write a query to insert values */
INSERT INTO student_table(s_id,s_fname,s_lname,class,age)
VALUES
(1,	"krishna", "gee",10,18),
(2,	"Stephen", "Christ",10,17),
(3,	"Kailash", "kumar",10,18),
(4,	"ashish", "jain",10,16),
(5,	"khusbu", "jain",10,17),
(6,	"madhan", "lal"	,10	,16),
(7,	"saurab", "kothari",10,15),
(8,	"vinesh", "roy"	,10	,14),
(9,	"rishika", "r",10,15),
(10, "sara", "rayan",10,16),
(11, "rosy", "kumar",10	,16);
/*Write a query to create a marksheet table that includes score,year,
ranking,calss and student id*/
CREATE TABLE marksheet_table (score int ,year int ,class int,ranking int,s_id int NOT NULL);
/* Write a query to insert values */
INSERT INTO marksheet_table (score,year,class,ranking,s_id)    
VALUES 
(989	,2010,  10	,1 ,1),
(454	,2014,	10	,10	,2),
(880  	,2014,	10,	4,	3),
(870	,2014,	10	,5,	4),
(720	,2014,	10,	7,	5),
(670	,2014,	10,	8,	6),
(900	,2014,	10,	3,	7),
(540	,2014,	10	,9,	8),
(801	,2014,	10,	6,	9),
(420	,2014,	10,	11,	10),
(970	,2014,	10,	2,  11),
(720	,2014,	10,	12,	12);
/* Write a query to display student id and student first name from the student table if the age is greater 
then or equal to 16 and the student's last name is Kumar */
Select s_id,s_fname
From student_table where age >= 16 and s_lname LIKE "%kumar%";

/* Write a query to display all th details from the marksheet table if the score is between 800 and 1000 */
SELECT * FROM marksheet_table 
WHERE score BETWEEN 800 and 1000;

/* Write a query to display the marksheet details from the marksheet table by adding 5 to the score and by 
naming the column as new score */
SELECT *, score+5 AS new_score 
FROM marksheet_table;
/* Write a query to display the marksheet table in descending order of the score */
SELECT * FROM marksheet_table 
order by score desc; 
/* Write a query to display details of the students whose first name starts with a */
SELECT * FROM student_table 
WHERE s_fname LIKE "a%";

/* END PROJECT */


select * from marksheet_dataset
order by ranking limit 20 ;

select * from marksheet_dataset
where score is not null;

select * from marksheet_dataset
order by score ;

select score,s_id from marksheet_dataset
order by score desc,s_id asc ;  

 

