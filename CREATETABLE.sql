CREATE DATABASE StudentDB;
USE StudentDB;
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    mobile VARCHAR(15)
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    fee DECIMAL(10,2)
);
CREATE TABLE Admissions (
    admission_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    agreed_fee DECIMAL(10,2),

    FOREIGN KEY (student_id)
        REFERENCES Students(student_id),

    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
);
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    admission_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,

    FOREIGN KEY (admission_id)
        REFERENCES Admissions(admission_id)
);
