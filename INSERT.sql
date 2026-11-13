
use studentdb;

INSERT INTO Courses (course_name, fee)
VALUES
('Python', 20000),
('Data Science', 30000),
('Web Development', 25000);

INSERT INTO Admissions
(student_id, course_id, agreed_fee)
VALUES
(1, 1, 20000),
(2, 2, 28000),
(3, 1, 19000),
(4, 3, 25000);

INSERT INTO Payments
(payment_id, admission_id, amount, payment_date)
VALUES
(5001, 5, 10000, '2026-11-01'),
(5002, 6, 5000, '2026-11-02'),
(5003, 7, 8000, '2026-11-03'),
(5004, 8, 5000, '2026-11-04');
