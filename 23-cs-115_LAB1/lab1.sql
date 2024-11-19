CREATE DATABASE studentDB;
SHOW DATABASES;

USE studentDB;

CREATE TABLE Students (
    stud_id INT(3),
    stud_name VARCHAR(50),
    stud_phone INT(7),
    stud_gpa INT(1)
);

SHOW TABLES;
DESCRIBE Students;

RENAME TABLE Students TO student;
SHOW TABLES;

ALTER TABLE student 
CHANGE stud_id id INT(3);

describe student;

ALTER TABLE student
CHANGE stud_name name VARCHAR(50),
CHANGE stud_phone phone INT(10),
CHANGE stud_gpa gpa FLOAT(3, 2);

describe student;



INSERT INTO student (id, name, phone, gpa)
VALUES
(1, 'ilyas', 1231241, 3.75),
(2, 'khan', 2131223, 3.50),
(3, 'ali', 1231231, 3.90),
(4, 'zain', 1231241, 3.20);

SELECT * FROM student;
SELECT * FROM student WHERE id=2;
DELETE FROM student WHERE id = 3;

SELECT * FROM student;

ALTER TABLE student
ADD dob DATE;


INSERT INTO student (id, name, dob)
VALUES
    (5, 'Eve', '2001-03-15'),
    (6, 'Frank', '2002-07-22');
    
UPDATE student
SET phone = 1231231234, gpa = 3.80
WHERE id = 5;

UPDATE student
SET phone = 9879879876, gpa = 3.60
WHERE id = 6;

SELECT * FROM student;

DELETE FROM student
WHERE id IN (5, 6);



