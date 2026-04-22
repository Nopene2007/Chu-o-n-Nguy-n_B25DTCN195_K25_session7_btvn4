use ss7;
-- khi co null la gia tri bi thieu, bat ki dau so sanh nao cung se tro thanh gia tri bi thieu(unknown).Theo and thi true and null = unknown, false and null= false.Where chi chay khi co true nen khi tra ve false hoac unknown thi se bo qua
-- toi se them where course_id is not null de tranh roi vao null
CREATE TABLE Courses (
	id INT PRIMARY KEY, 
    title VARCHAR(100)
);
CREATE TABLE Enrollments (
	enrollment_id INT PRIMARY KEY, 
    course_id INT);
SELECT * FROM Courses
WHERE id NOT IN (
    SELECT course_id 
    FROM Enrollments 
    WHERE course_id IS NOT NULL 
);