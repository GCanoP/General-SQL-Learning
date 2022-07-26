CREATE DATABASE example_database; 
USE example_database;
 
-- Creating a table Departments.
CREATE TABLE Departments(
	Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id));

-- Creating a table Employees. 
CREATE TABLE Employees(
	Id INT NOT NULL AUTO_INCREMENT,
    FName VARCHAR(50) NOT NULL,
    LName VARCHAR(50) NOT NULL,
    DeptId INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(DeptId) REFERENCES Departments(Id));
    
-- Insert data into Departments. 
INSERT INTO Departments
	(Name)
VALUES
	('Sales'),
    ('Marketing'),
    ('Finance'),
    ('IT');

-- Insert data into Employees. 
INSERT INTO Employees
	(Fname, LName, DeptId)
VALUES
	('James', 'Smith', 3),
    ('John', 'Johnson',4);
    
-- Performing a simple JOIN. 
SELECT
	Employees.*,
    Departments.Name
FROM 
	Employees
JOIN
	Departments ON Departments.Id = Employees.DeptId;
    
