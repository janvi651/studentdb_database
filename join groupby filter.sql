SELECT
    s.student_id,
    s.name,
    c.course_name
FROM Students s
INNER JOIN Admissions a
ON s.student_id = a.student_id
INNER JOIN Courses c
ON a.course_id = c.course_id;

SELECT
    Students.student_id,
    Students.name,
    SUM(Payments.amount) AS total_paid
FROM Students
INNER JOIN Admissions
ON Students.student_id = Admissions.student_id
INNER JOIN Payments
ON Admissions.admission_id = Payments.admission_id
GROUP BY
    Students.student_id,
    Students.name;
    
    SELECT
    Students.name,
    Courses.course_name,
    Admissions.agreed_fee,
    COALESCE(SUM(Payments.amount), 0) AS total_paid,
    Admissions.agreed_fee -
    COALESCE(SUM(Payments.amount), 0) AS pending_balance
FROM Admissions
INNER JOIN Students
ON Admissions.student_id = Students.student_id
INNER JOIN Courses
ON Admissions.course_id = Courses.course_id
LEFT JOIN Payments
ON Admissions.admission_id = Payments.admission_id
GROUP BY
    Admissions.admission_id,
    Students.name,
    Courses.course_name,
    Admissions.agreed_fee;
    
    SELECT
    Courses.course_name,
    COUNT(Admissions.admission_id) AS total_admissions
FROM Courses
LEFT JOIN Admissions
ON Courses.course_id = Admissions.course_id
GROUP BY Courses.course_id, Courses.course_name;

SELECT
    Payments.payment_id,
    Students.name,
    Courses.course_name,
    Payments.amount,
    Payments.payment_date
FROM Payments
INNER JOIN Admissions
ON Payments.admission_id = Admissions.admission_id
INNER JOIN Students
ON Admissions.student_id = Students.student_id
INNER JOIN Courses
ON Admissions.course_id = Courses.course_id
ORDER BY Payments.payment_date;

SELECT *
FROM Admissions
WHERE admission_date
BETWEEN '2026-11-01' AND '2026-11-06';