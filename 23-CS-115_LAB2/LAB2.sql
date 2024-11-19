SHOW DATABASES;


USE student;


describe student;
ALTER TABLE student
CHANGE dob DOB DATE,
ADD COLUMN Semester INT,
ADD COLUMN Department VARCHAR(100),
CHANGE gpa GPA DECIMAL(3, 2);

INSERT INTO student (ID, Name, DOB, Semester, Department, GPA)
VALUES
(1, 'ali', '2002-03-15', 2, 'Computer Science', 3.5),
(2, 'nigga', '2001-07-22', 3, 'Electrical Engineering', 3.8),
(3, 'hitler', '2000-12-05', 4, 'Mechanical Engineering', 3.2);

UPDATE student
SET DOB = '2001-01-10', Semester = 3, Department = 'Mathematics', GPA = 3.9
WHERE ID = 1;

SELECT * FROM student;

SELECT ID, Name, Department FROM student;

SELECT DISTINCT Department FROM student;

SELECT Name AS "Student Name", Department AS "Department", DOB AS "Date of Birth" FROM student;

SELECT * 
FROM student
WHERE Department = 'Computer Science';

SELECT Name, Semester, GPA 
FROM student
WHERE Department = 'Mechanical Engineering';


SELECT Name, Semester, Department
FROM student
WHERE NOT Department='Mathematics';

SELECT Name, Semester, GPA, Department
FROM student
WHERE GPA < 2.5 AND Semester >= 5;

SELECT Name, Semester
FROM student
WHERE Department = 'Electrical Engineering' OR GPA > 3.5;

SELECT Name, DOB, Department
FROM student
WHERE DOB > '2000-12-31' OR Semester < 3;

SELECT Name, GPA
FROM student
WHERE GPA BETWEEN 2.5 AND 3.5;

SELECT *
FROM student
WHERE Name LIKE '%a%';

SELECT Name, Department
FROM student
ORDER BY Name ASC;

SELECT Name, Department, GPA
FROM student
ORDER BY GPA DESC;

SELECT Name, Department, GPA
FROM student
ORDER BY GPA DESC
LIMIT 3;


SELECT Name, GPA
FROM student
ORDER BY GPA DESC
LIMIT 3 OFFSET 3;

SELECT Name, GPA
FROM student
ORDER BY GPA ASC
LIMIT 3;
