CREATE DATABASE database_example; 
USE database_example; 

-- Creating a Table Person.
CREATE TABLE person(
	person_id SMALLINT UNSIGNED AUTO_INCREMENT,
    fname VARCHAR(20),
    lname VARCHAR(20),
    gender ENUM('M','F'),
    birth_date DATE,
    street VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY(person_id));
    
-- Creating a Table Favorite Foods.
CREATE TABLE favorite_food(
	person_id SMALLINT UNSIGNED,
    food VARCHAR(20),
    CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
    CONSTRAINT fk_favorite_food FOREIGN KEY (person_id) REFERENCES person(person_id));

-- Modifying a Table. 
-- ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;

-- Populating a Table.
INSERT INTO person
	(person_id, fname, lname, gender, birth_date)
VALUES
	(null, 'William', 'Turner', 'M', '1972-05-27');
 
 -- Making a Basic Queries.    
SELECT person_id, fname, lname, gender, birth_date
FROM person;

SELECT person_id, fname, lname, gender, birth_date
FROM person
WHERE person_id = 1 ; 

    

