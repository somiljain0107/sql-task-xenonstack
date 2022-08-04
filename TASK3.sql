DROP DATABASE somil;
CREATE DATABASE somil;-- 
USE somil;

CREATE TABLE dept (
    deptID int,
	Department varchar(255),
    PRIMARY KEY (deptID)
);
CREATE TABLE emp (
    EmpID int,
    LastName varchar(255),
    FirstName varchar(255),
    Salary varchar(255),
    City varchar(255),
    deptID int,
    PRIMARY KEY (EmpID),
    FOREIGN KEY (deptID) REFERENCES dept (deptID)
);


ALTER TABLE emp MODIFY COLUMN Salary int;
CREATE INDEX sal ON emp (Salary);

INSERT INTO dept (deptID, Department) VALUES (1, "account");
INSERT INTO dept (deptID, Department) VALUES (2, "develop");
INSERT INTO dept (deptID, Department) VALUES (3, "sales");

INSERT INTO emp (EmpID, LastName, FirstName, Salary, City, deptID) VALUES (1, "testlast", "testfirst", 1000, "delhi", 1);
INSERT INTO emp (EmpID, LastName, FirstName, Salary, City, deptID) VALUES (2, "testlast", "testfirst", 600, "mumbai", 3);
INSERT INTO emp (EmpID, LastName, FirstName, Salary, City, deptID) VALUES (3, "testlast", "testfirst", 1000, "delhi", 1);

SELECT * FROM emp INNER JOIN dept ON emp.deptID = dept.deptID;
SELECT * FROM emp RIGHT JOIN dept ON emp.deptID = dept.deptID;
SELECT * FROM emp LEFT JOIN dept ON emp.deptID = dept.deptID;
SELECT * FROM emp LEFT JOIN dept ON emp.deptID = dept.deptID UNION ALL SELECT * FROM emp RIGHT JOIN dept ON emp.deptID = dept.deptID;