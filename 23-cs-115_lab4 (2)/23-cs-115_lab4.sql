SHOW DATABASES;
USE student;

CREATE TABLE Location (
    locationID INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50) DEFAULT 'Karachi',
    country VARCHAR(50) DEFAULT 'Pakistan'
);

CREATE TABLE Department (
    deptID INT AUTO_INCREMENT PRIMARY KEY,
    deptName VARCHAR(100) NOT NULL,
    locationID INT,
    FOREIGN KEY (locationID) REFERENCES Location(locationID)
);

CREATE TABLE Job (
    jobID VARCHAR(10) PRIMARY KEY,
    jobTitle VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2)
);

CREATE TABLE Employee (
    employeeID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    hiringDate DATE,
    deptID INT,
    jobID VARCHAR(10),
    FOREIGN KEY (deptID) REFERENCES Department(deptID),
    FOREIGN KEY (jobID) REFERENCES Job(jobID)
);


-- Inserting records into the Location table
INSERT INTO Location (city, country) VALUES ('Karachi', 'Pakistan');
INSERT INTO Location (city, country) VALUES ('Lahore', 'Pakistan');
INSERT INTO Location (city, country) VALUES ('Islamabad', 'Pakistan');
INSERT INTO Location (city, country) VALUES ('Dubai', 'UAE');

-- Inserting records into the Department table
INSERT INTO Department (deptName, locationID) VALUES ('Engineering', 1);
INSERT INTO Department (deptName, locationID) VALUES ('Marketing', 2);
INSERT INTO Department (deptName, locationID) VALUES ('HR', 3);
INSERT INTO Department (deptName, locationID) VALUES ('Finance', 4);

-- Inserting records into the Job table
INSERT INTO Job (jobID, jobTitle, salary) VALUES ('ENG123', 'Engineer', 50000.00);
INSERT INTO Job (jobID, jobTitle, salary) VALUES ('MAN456', 'Manager', 70000.00);
INSERT INTO Job (jobID, jobTitle, salary) VALUES ('HR789', 'HR Specialist', 45000.00);
INSERT INTO Job (jobID, jobTitle, salary) VALUES ('FIN012', 'Finance Officer', 60000.00);

-- Inserting records into the Employee table
INSERT INTO Employee (firstName, lastName, hiringDate, deptID, jobID) 
VALUES ('John', 'Doe', '2023-01-01', 1, 'ENG123');
INSERT INTO Employee (firstName, lastName, hiringDate, deptID, jobID) 
VALUES ('Jane', 'Smith', '2022-02-15', 2, 'MAN456');
INSERT INTO Employee (firstName, lastName, hiringDate, deptID, jobID) 
VALUES ('Alice', 'Johnson', '2021-06-01', 3, 'HR789');
INSERT INTO Employee (firstName, lastName, hiringDate, deptID, jobID) 
VALUES ('Bob', 'Davis', '2020-11-30', 4, 'FIN012');


SELECT * FROM Location;

SELECT * FROM Department;

SELECT * FROM Job;

SELECT * FROM Employee;


DESCRIBE Location;

DESCRIBE Department;

DESCRIBE Job;

DESCRIBE Employee;
