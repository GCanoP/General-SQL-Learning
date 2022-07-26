CREATE DATABASE database_example; 
USE database_example; 

-- Creating a table Authors. 
CREATE TABLE Authors(
	Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(70) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    PRIMARY KEY(Id));
-- Adding Data to Table Authors. 
INSERT INTO Authors
	(Name, Country)
VALUES
	('J. D. Salinger', 'USA'),
    ('F. Scott. Fitzgerald', 'USA'),
    ('Jane Austen', 'UK'),
    ('Scott Hanselman', 'USA'),
    ('Jasson N. Gaylord', 'USA'),
    ('Pranav Rastogi', 'India'),
    ('Todd Miranda', 'USA'),
    ('Christian Wenz', 'USA');

-- Creating a table Books. 
CREATE TABLE Books(
	Id INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id));    
-- Adding data to table Books. 
INSERT INTO Books
	(Title)
VALUES
	('The Catcher in the Rye'),
    ('Nine Stories'),
    ('Franny and Zooey'),
    ('The Great Gatsby'),
    ('Tender in the Night'),
    ('Pride and Prejudice'),
    ('Professional ASP.NET 4.5 in C# and VB');
    
-- Creating table Book Authors. 
CREATE TABLE BooksAuthors(
	AuthorId INT NOT NULL,
    BookId INT NOT NULL,
    FOREIGN KEY(AuthorId) REFERENCES Authors(Id),
    FOREIGN KEY(BookId) REFERENCES Books(Id));
-- Adding data to table BooksAuthors. 
INSERT INTO BooksAuthors
	(BookId, AuthorId)
VALUES
	(1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 3),
    (7, 4),
    (7, 5),
    (7, 6),
    (7, 7),
    (7, 8);
    
-- Code examples.
SELECT * FROM Authors;
SELECT * FROM Books; 
SELECT * FROM Authors WHERE Country = 'USA';
SELECT * FROM Authors WHERE Country != 'USA';

-- Syntax for an INNER JOIN.
SELECT
ba.AuthorId, -- Joining variable. 
a.Name AuthorName, -- Defining a new alias. 
ba.BookId, -- Joning variables
b.Title BookTitle -- Defining a new alias.
FROM BooksAuthors ba -- Primary Jolin table. 
	INNER JOIN Authors a ON a.id = ba.authorid
    INNER JOIN Books b ON b.id = ba.bookid;
    
-- Countries table example. 

    