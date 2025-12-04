SELECT * FROM Student

SELECT * FROM CourseNew

SELECT * FROM Student s
INNER JOIN CourseNew c
ON s.RolLNum = c.RollNum

SELECT * FROM Student s
 JOIN CourseNew c
ON s.RolLNum = c.RollNum

SELECT s.RollNum,s.StudentName,s.StudentCity,c.CourseID FROM Student s
INNER JOIN CourseNew c
ON s.RolLNum = c.RollNum

SELECT s.RollNum,s.StudentName,s.StudentCity,c.CourseID FROM Student s
LEFT JOIN CourseNew c
ON s.RolLNum = c.RollNum

SELECT s.RollNum,s.StudentName,s.StudentCity,c.CourseID FROM Student s
RIGHT JOIN CourseNew c
ON s.RolLNum = c.RollNum

SELECT s.RollNum,s.StudentName,s.StudentCity,c.CourseID FROM Student s
FULL JOIN CourseNew c
ON s.RolLNum = c.RollNum