use studentdb;

UPDATE Students
SET mobile = '9999999999'
WHERE student_id = 1;

SELECT*FROM Students
WHERE student_id = 1;

UPDATE Courses
SET course_name = 'DJANGO'
where course_id = 3;

SELECT*FROM Courses
where course_id =3;