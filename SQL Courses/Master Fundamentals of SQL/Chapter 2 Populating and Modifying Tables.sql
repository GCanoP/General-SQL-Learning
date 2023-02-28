CREATE DATABASE database_example; 
USE database_example; 

-- CREATING A TABLE PERSON.
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
    
-- CREATING A TABLE FAVORITE FOODS.
CREATE TABLE favorite_food(
	person_id SMALLINT UNSIGNED,
    food VARCHAR(20),
    CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
    CONSTRAINT fk_favorite_food FOREIGN KEY (person_id) REFERENCES person(person_id));

-- MODIFYING A TABLE. 
-- ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;

-- POPULATING PERSON TABLE.
INSERT INTO person
	(person_id, fname, lname, gender, birth_date)
VALUES
	(null, 'William', 'Turner', 'M', '1972-05-27');
 
 -- MAKING BASIC QUERIES.    
SELECT person_id, fname, lname, gender, birth_date
FROM person;
SELECT person_id, fname, lname, gender, birth_date
FROM person
WHERE person_id = 1 ; 
SELECT person_id, fname, lname, gender, birth_date
FROM person
WHERE lname = 'Turner';

-- POPULATING FAVORITE FOOD TABLE
INSERT INTO favorite_food
	(person_id, food)
VALUES
	(1, 'pizza'),
    (1, 'cookies'),
    (1, 'nachos');

-- MAKING A ORDER BY ASC QUERY
SELECT food
FROM favorite_food
WHERE person_id = 1
ORDER BY food ASC;
 
 -- INSERT NEW DATA ON PERSON TABLE
INSERT INTO person
	(person_id, fname, lname, gender, birth_date, street, city, state, country, postal_code)
VALUES
	(null, 'Susan', 'Smith', 'F', '1975-11-02', '23 Maple St.', 'Arlington', 'VA', 'USA', '20220');
 
-- QUERY FOR THE NEW DATA.
SELECT person_id, fname, lname, birth_date
FROM person;

-- UPDATIG THE DARTA IN PERSON TABLE.
UPDATE person
SET 
	street = '1225Tremont St.',
    city = 'Boston',
    state = 'MA',
    country = 'USA',
    postal_code = '02138'
WHERE person_id = 1;

-- DELETIG DATA. 
DELETE FROM person
WHERE person_id = 2;

-- DELETING TABLES.
DROP TABLE favorite_food;
DROP TABLE person;