DROP DATABASE dms_exam;
CREATE DATABASE dms_exam;
USE dms_exam;
CREATE TABLE infoTable(
	Reg_no varchar(255) NOT NULL,
    First_Name varchar(255),
    Last_Name varchar(255),
    Course varchar(255),
    Gender char(50),
    D_O_B date,
    PRIMARY KEY(Reg_no)
);
INSERT INTO infoTable(Reg_no, First_Name, Last_Name, course, Gender, D_O_B)
VALUES ('1/2016','John', 'Mutuku', 'DCS', 'Male', '1990/6/13'),
		('2/206', 'Steve', 'Kipkorir', 'DCS', 'Male', '1985/3/13'),
        ('3/2016', 'Susan', 'Mutua', 'CIT', 'Female', '1986/11/19'),
        ('4/2017', 'Steve', 'Kingori', 'DBIT', 'Male', '1978/3/1');
        
-- CREATE TABLE stuffCategories(
-- 	stuffid int,
--     Administration varchar(255),
--     Kitchen varchar(255),
--     WaitersWaitresses varchar(255),
--     parking varchar(255),
--     cleaners varchar(255)
-- );
-- INSERT INTO stuffCategories(Administration,Kitchen,WaitersWaitresses,parking,cleaners)
-- VALUES ("Aiko Zack", 'Larry','Gata','Mike','Lee'),
-- 		("Favour", 'Manu','Washer','Bult','Leyob'),
--         ("Gil", 'Emma','Han','Hanna','Letius'),
--         ("Gilian", 'Emma','Hanuel','Hanna','Letius');

-- CREATE TABLE Employees(
-- 	detailID int auto_increment primary key,
--     firstName varchar(255) not null,
--     lastName varchar(255) not null,
--     position varchar(255) not null,
--     hireDate date not null,
--     salary int not null,
--     shiftSchedule varchar(255) not null,
--     phoneNumber varchar(255) not null unique,
--     DOB char(15) null
-- );
-- INSERT INTO Employees (firstName, lastName, position, hireDate, salary, shiftSchedule, phoneNumber)
-- values( 'Favour', 'Gilian', 'Manager', '2025-05-06',700000, 'All day', '123-456-4321'),
-- ('Aiko', 'Zach', 'CEO', '2024-11-12', 25000000, 'At will', '124-567-3456'),
-- ('Ayikoru', 'mercy', 'Waitress', '2025-04-14','250000', 'Night', '345-564-4512');

-- SELECT Reg_no ,Last_Name,First_Name -- selcting partciualr columns
-- FROM infoTable;

-- -- joining the columns ie works with 2 or more tables
-- SELECT infoTable.Last_Name, stuffCategories.Administration
-- FROM infoTable
-- INNER JOIN stuffCategories ON infoTable.Reg_no = stuffCategories.Reg_no;

-- SELECT infoTable.Reg_no, stuffCategories.Administartion, Employees.firstName
-- FROM ((infoTable
-- INNER JOIN stuffCategories ON infoTable.Reg_no = stuffCategories.Reg_no)
-- INNER JOIN Employees ON infoTable.detailID = Employees.detailID);

SELECT *
FROM infoTable;

-- joining 2 objects
SELECT Reg_no, CONCAT(First_Name, ' ', Last_Name)
AS studentName
FROM infoTable;

SELECT *
FROM infoTable
WHERE Gender = 'Male' AND course = 'DCS';

SELECT course, 
COUNT(*) 
AS totalStudents
FROM infoTable
GROUP BY course;

SELECT *
FROM infoTable
WHERE Gender = 'Male'
 AND D_O_B BETWEEN '1980-01-10'  AND '1989-01-01';
 
  SELECT *
FROM infoTable
ORDER BY First_Name ASC; -- |DESC;

SELECT * 
FROM infoTable
WHERE First_Name 
LIKE 's%';

 UPDATE infoTable
 SET Last_Name = 'Mwangi'
 WHERE Reg_no = '4/2017';
 
 SELECT *
 FROM infoTable
 WHERE Reg_no = '4/2017';
 
 SELECT *
FROM infoTable
ORDER BY First_Name ASC; -- |DESC;
 
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- LIMIT number;  --returning a specific number of records