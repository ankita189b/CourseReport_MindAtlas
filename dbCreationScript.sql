-- DDL
CREATE TABLE Users (
UserID INTEGER PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(200),
Surname VARCHAR(200)
);
CREATE TABLE Courses (
CourseID INTEGER PRIMARY KEY AUTO_INCREMENT,
Description VARCHAR(1000)
);
CREATE TABLE Enrollments (
EnrollmentID INTEGER PRIMARY KEY AUTO_INCREMENT,
UserID INTEGER, FOREIGN KEY (UserID) REFERENCES Users (UserID),
CourseID INTEGER, FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
CompletionStatus VARCHAR(15) NOT NULL
-- , CHECK (CompletionStatus = 'not started' OR CompletionStatus = 'in progress' OR CompletionStatus = 'completed')
);

-- DML test data
INSERT INTO Users (FirstName, Surname) VALUES ('A', 'B');
INSERT INTO Users (FirstName, Surname) VALUES ('C', 'D');
INSERT INTO Users (FirstName, Surname) VALUES ('E', 'F');
INSERT INTO Users (FirstName, Surname) VALUES ('G', 'H');
INSERT INTO Users (FirstName, Surname) VALUES ('I', 'J');
INSERT INTO Users (FirstName, Surname) VALUES ('K', 'L');
INSERT INTO Users (FirstName, Surname) VALUES ('M', 'N');
INSERT INTO Users (FirstName, Surname) VALUES ('O', 'P');
INSERT INTO Users (FirstName, Surname) VALUES ('Q', 'R');
INSERT INTO Users (FirstName, Surname) VALUES ('S', 'T');

INSERT INTO Courses (Description) VALUES ('Chemistry');
INSERT INTO Courses (Description) VALUES ('Biology');
INSERT INTO Courses (Description) VALUES ('Physics');
INSERT INTO Courses (Description) VALUES ('Mathematics');
INSERT INTO Courses (Description) VALUES ('English');
INSERT INTO Courses (Description) VALUES ('French');
INSERT INTO Courses (Description) VALUES ('Spanish');
INSERT INTO Courses (Description) VALUES ('Social Science');
INSERT INTO Courses (Description) VALUES ('Computer');
INSERT INTO Courses (Description) VALUES ('Management');

INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (1, 1, 'in progress');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (1, 2, 'completed');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (2, 5, 'completed');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (3, 6, 'completed');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (4, 4, 'completed');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (5, 6, 'not started');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (7, 2, 'in progress');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (7, 3, 'not started');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (9, 7, 'in progress');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (10, 8, 'completed');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (6, 9, 'completed');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (3, 10, 'in progress');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (10, 6, 'in progress');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (1, 7, 'not started');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (3, 5, 'in progress');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (4, 8, 'completed');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (6, 4, 'not started');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (8, 9, 'in progress');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (9, 3, 'not started');
INSERT INTO Enrollments (UserID, CourseID, CompletionStatus) VALUES (2, 2, 'not started');

SELECT Users.FirstName, Users.Surname, Courses.Description, Enrollments.CompletionStatus FROM Users, Courses, Enrollments WHERE Enrollments.UserID = Users.UserID AND Enrollments.CourseID = Courses.CourseID;
