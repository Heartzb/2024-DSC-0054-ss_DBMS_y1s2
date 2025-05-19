-- question 4
CREATE DATABASE studentinfor;
use studentinfor;
CREATE TABLE student(
stud_id int,
codes varchar(225),
stud_name varchar(225)
);

CREATE TABLE course(
codes varchar(225),
Title varchar(225));

INSERT INTO course VALUES(codes,Title,
VALUES("IMIS""Infor.system"),
("BIT","Bachelor of IT"),
("CIT","Cert in IT"),
("DIT","Dip in IT"));

SELECT*
FROM students,course;

INSERT INTO student VALUES(codes,stud_id,stud_name),
(001,"IMIS","Damis"),
(002,"BIT","Okal"),
(003,"BIT","Kahuria"),
(004,"CIT","Mwangi");

UPDATE student
SET stud_name = "kemisha";

DROP TABLE course,student;

 SELECT *
FROM student
ORDER BY stud_name ASC; -- |DESC;