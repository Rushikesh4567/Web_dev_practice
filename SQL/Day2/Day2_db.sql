use practice_db;

CREATE TABLE Students(
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    DateOfBirth DATE,
    AdmissionDate DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT CHECK (Credits > 0)
);

CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    Grade CHAR(2),

    UNIQUE(StudentID, CourseID),

    FOREIGN KEY (StudentID)
        REFERENCES Students(StudentID)
        ON DELETE CASCADE,

    FOREIGN KEY (CourseID)
        REFERENCES Courses(CourseID)
        ON DELETE CASCADE
);

INSERT INTO Students
(FirstName, LastName, Email, Phone, DateOfBirth)
VALUES
('Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', '2003-05-10'),

('Priya', 'Patil', 'priya@gmail.com', '9876501234', '2002-09-15'),

('Amit', 'Verma', 'amit@gmail.com', '9876511111', '2003-01-20');

INSERT INTO Courses
(CourseName, Credits)
VALUES
('Database Management System', 4),

('Data Structures', 3),

('Operating Systems', 4);

INSERT INTO Enrollments
(StudentID, CourseID, Grade)
VALUES
(1, 1, 'A'),

(2, 2, 'B'),

(1, 3, 'A');
