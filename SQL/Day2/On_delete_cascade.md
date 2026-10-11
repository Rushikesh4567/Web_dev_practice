1. CHECK Constraint
The CHECK constraint is used to make sure that data inserted into a column satisfies a specific condition.
Example
Suppose we create a Students table:
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT CHECK (Age >= 18)
);
Here:
CHECK (Age >= 18)
means the student's age must be 18 or greater.
Valid data
INSERT INTO Students VALUES (1, 'Rahul', 20);
✅ This works because 20 >= 18.
Invalid data
INSERT INTO Students VALUES (2, 'Amit', 15);
❌ This will be rejected because 15 < 18.
Another example
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2) CHECK (Price > 0)
);
Now:
INSERT INTO Products VALUES (1, 'Laptop', 50000);
✅ Valid
INSERT INTO Products VALUES (2, 'Mouse', -500);
❌ Invalid
Because the condition:
Price > 0
is not satisfied.
In simple words
CHECK = "Only allow data that satisfies this condition."

2. ON DELETE CASCADE
ON DELETE CASCADE is used with a Foreign Key.
It controls what happens to child records when the related parent record is deleted.
Let's use a simple example.
Parent table: Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50)
);
Child table: Enrollments
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseName VARCHAR(50),

    FOREIGN KEY (StudentID)
        REFERENCES Students(StudentID)
        ON DELETE CASCADE
);
Here:
Students
   |
   | StudentID
   ↓
Enrollments
Students is the parent table.
Enrollments is the child table.
Insert some data
INSERT INTO Students VALUES
(1, 'Rahul'),
(2, 'Amit');
And:
INSERT INTO Enrollments VALUES
(101, 1, 'DBMS'),
(102, 1, 'Java'),
(103, 2, 'Python');
Our tables look like:
Students
StudentID	Name
1	Rahul
2	Amit


Enrollments
EnrollmentID	StudentID	CourseName
101	1	DBMS
102	1	Java
103	2	Python


Now suppose we execute:
DELETE FROM Students
WHERE StudentID = 1;
What happens?
Because we specified:
ON DELETE CASCADE
all enrollments belonging to Student 1 are automatically deleted.
So after deletion:
Students
StudentID	Name
2	Amit


Enrollments
EnrollmentID	StudentID	CourseName
103	2	Python


The records:
101 | 1 | DBMS
102 | 1 | Java
were automatically deleted.
Why do we use CASCADE?
Imagine you have:
Customer
   ↓
Orders
   ↓
Order_Items
If a customer is deleted, you may want their related orders and order items to be deleted automatically.
Without ON DELETE CASCADE, the database may prevent you from deleting the parent because child records still reference it.
Important difference
Constraint	Purpose
CHECK	Validates whether a value satisfies a condition
ON DELETE CASCADE	Automatically deletes related child rows when a parent row is deleted


Easy way to remember 🧠
CHECK:
"Is this value allowed?"

CHECK (Age >= 18)
ON DELETE CASCADE:
"If the parent is deleted, delete its related children too."

ON DELETE CASCADE
One important point: ON DELETE CASCADE should be used carefully, because deleting one parent row can automatically delete many child rows.