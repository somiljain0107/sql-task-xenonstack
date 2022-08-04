USE somil;

-- Joining with ON
SELECT * FROM emp INNER JOIN dept ON emp.deptID = dept.deptID;

-- Joining with using
SELECT * FROM emp INNER JOIN dept USING (deptID);