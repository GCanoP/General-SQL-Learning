-- Creating a database. 
CREATE DATABASE database_example; 
USE database_example; 

-- Creating a table Departments.
CREATE TABLE Departments (
	Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(25) NOT NULL,
    PRIMARY KEY(Id));
    
-- Adding data to the table Departments. 
INSERT INTO Departments
	(Id, Name)
VALUES
	(1, 'HR'),
    (2, 'Sales'),
    (3, 'Tech');

-- Creating a table Employees.
CREATE TABLE Employees (
	Id INT NOT NULL AUTO_INCREMENT,
    FName VARCHAR(35) NOT NULL,
    LName VARCHAR(35) NOT NULL,
    PhoneNumber VARCHAR(11),
    ManagerId INT,
    DepartmentId INT NOT NULL,
    Salary INT NOT NULL,
    HireDate DATETIME NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(ManagerId) REFERENCES Employees(Id),
    FOREIGN KEY(DepartmentId) REFERENCES Departments(Id));

-- Adding data to the table Employeees.
INSERT INTO Employees
	(Id, Fname, LName, PhoneNumber, ManagerID, DepartmentID, Salary, HireDate)
VALUES
	(1, 'James', 'Smith', 1234567890, NULL, 1, 1000, '2002-01-01'),
    (2, 'John', 'Johnson', 2468101214, '1', 1, 400, '2005-03-23'),
    (3, 'Michael', 'William', 1357911131, '1', 2, 600, '2009-12-05'),
    (4, 'Johnathon', 'Smith', 1212121212, '2', 1, 500, '2016-07-24');
    

    
    