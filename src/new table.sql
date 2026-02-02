
USE practice
GO

CREATE TABLE Students
(
StudentID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(30),
Marks INT,
Email VARCHAR(100),
Age INT
)
GO

INSERT INTO Students VALUES
(1,'Manasa','CSE',85,'manasa@gmail.com',21),
(2,'Vaish','ECE',58,NULL,19),
(3,'Jana','CSE',95,'jana@gmail.com',52),
(4,'Devi','EEE',43,'devi@gmail.com',43),
(5,'Pavi','CSE',NULL,NULL,20)
GO
