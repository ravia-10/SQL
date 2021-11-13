-- Creating a database
CREATE DATABASE Movies;  

-- show is a keyword used to show something
show databases;

-- using database command is 
USE Movies;

-- Creating table syntax is CREATE TABLE <TABLENAME> ( ATTRIBUTIES 1  DATATYPES , ATTRIBUTIES 2 DATATYPES,ATTRIBUTIES 3 DATATYPES.....,ATTRIBUTIES N  DATATYPES);
CREATE TABLE  Actors_Details(
Actor_name TEXT(20),
Actor_Age tinyint(6),
Actor_Gender text(6),
Actor_DOB DATE,
Actor_BloodGroup Varchar(3)
);

-- SELECT is command used to display 
SELECT * FROM Actors_Details;

 -- Discribe the table;
 DESCRIBE movies.actors_details; 
 
 -- DROP it will drop everthing in by giving Tabalename
 DROP TABLE Actors_Details;

-- insert the vaules using insert keyword syntax are INSERT 
INSERT INTO Actors_Details VALUE (); -- null values insert default

-- inserting multiple rows ;
INSERT INTO Actors_Details VALUES ("Surya",39,"Male",'1979-08-09',"B+"),("Puneeth",46,"Male",'1975-08-29',"A+"),("kajal",34,"Female",'1979-11-19',"B-"),("Anushka",32,"Female",'1987-04-22',"A-"),("VijayTalapthy",46,"Male",'1971-06-29',"B+"),("RajiniKanth",66,"Male",'1910-08-09',"B+");

-- alter command
-- syntax ALTER TABLE <tablename> ADD COULMN <column Name> datatyppes;
ALTER TABLE movies.actors_details  ADD COLUMN Actor_States text;

ALTER TABLE movies.actors_details   RENAME  COLUMN Actor_States To  ACTOR; -- it will rename the cloumn name

ALTER TABLE movies.actors_details  DROP COLUMN ACTOR; -- it drop the cloumn name

-- Turncate command
truncate movies.actors_details; -- it will delete all values not attribute names;;

-- constraints 
-- NOT NULL :- it should contains values only
CREATE TABLE  Actors_Details(
Actor_id INT,
Actor_name TEXT(20) ,
Actor_Age INT(6) ,
Actor_Gender TEXT(6) NOT NULL,  -- here were using it 
Actor_DOB DATE,
Actor_BloodGroup Varchar(3),
PRIMARY KEY(Actor_id)
);

SELECT * FROM movies.actors_details;
INSERT INTO movies.actors_details(Actor_name,Actor_AGE,Actor_Gender) VALUES ("Surya",39,"Male");

INSERT INTO movies.actors_details VALUES ("Surya",39,'1979-08-09',"B+");

ALTER TABLE movies.actors_details ADD COLUMN Actor_Id INT  ;

drop table movies.actors_details;

INSERT INTO Actors_Details (Actor_id,Actor_name,Actor_DOB)VALUES (1,"Surya",'1979-08-09');
-- Error Code: 1364. Field 'Actor_Gender' doesn't have a default value	0.000 sec

INSERT INTO Actors_Details VALUES (1,"Surya",39,"Male",'1979-08-09',"B+"),(2,"Puneeth",46,"Male",'1975-08-29',"A+"),(3,"kajal",34,"Female",'1979-11-19',"B-"),(4,"Anushka",32,"Female",'1987-04-22',"A-"),(5,"VijayTalapthy",46,"Male",'1971-06-29',"B+"),(6,"RajiniKanth",66,"Male",'1910-08-09',"B+");

SELECT * FROM  movies.actors_details WHERE  Actor_Gender IS NULL; -- it will show all null value if any present
SELECT * FROM movies.actors_details WHERE  Actor_Gender IS NOT NULL; -- it will show only values

SELECT DISTINCT Actor_id FROM actors_details;

SELECT * FROM movies.actors_details;


-- update the value of existing row with primary key;
UPDATE movies.actors_details SET  Actor_BloodGroup = 'O+' WHERE Actor_Id = 5;

-- orderby will order acending order 
SELECT * FROM movies.actors_details ORDER BY  Actor_Age;

-- orderby DESC  will order in  descending order
SELECT * FROM movies.actors_details ORDER BY  Actor_Age DESC;

-- limit will display mentioned numbers times;
SELECT * FROM movies.actors_details LIMIT 3;

-- In 
SELECT * FROM movies.actors_details WHERE  Actor_id IN('Surya', '39', 'Male');

-- BETWEEN shows values enter in range;
SELECT * FROM movies.actors_details WHERE  Actor_Age BETWEEN 30 AND 40;

-- LIKE checks letters in table
SELECT * FROM movies.actors_details WHERE Actor_name LIKE '%a'; -- ending with a;
SELECT * FROM movies.actors_details WHERE Actor_name LIKE 'S%'; --  starting with a;
SELECT * FROM movies.actors_details WHERE Actor_name LIKE '%a%'; --  btw with a;

-- date and time function

SELECT CURDATE(); -- to get current date
SELECT CURTIME(); -- TO GET CURRENT TIME
SELECT NOW(); -- TO GET BOTH CURRENT DATE AAND TIME
SELECT DATE(NOW()); -- IT WILL EXTRACT ONLY DATE
SELECT TIME(NOW()); -- IT WILL EXTRACT ONLY TIME
SELECT DAYOFMONTH(NOW()); -- IT WILL EXTRACT  THE DAY OF MONTH
SELECT MONTH(NOW()); -- IT WILL GIVE THE MONTHS
SELECT YEAR(NOW()); -- IT WILL GIVE THE CURRENT YEAR
SELECT WEEK(NOW()); -- IT WILL GIVE THE NUMBER OF WEEK PASSED TILL NOW
SELECT DAYNAME(NOW()); -- IT WILL GIVE THE NAME OF TODAYS DAY
SELECT DAYOFWEEK(NOW()); -- IT WILL GIVE THE DAY NUMBER PASSED IN THE CURRENT WEEK
SELECT DAYOFYEAR(NOW()); -- IT WILL GIVE THE NUMBER OF DAYS PASSED IN CURRENT YEAR


-- AGREGATE FUNCTION

SELECT MAX(Actor_Age) AS maximum FROM  movies.actors_details; -- it will give the maximum  Age from the Actors;

SELECT MIN(Actor_Age) AS Minumum FROM movies.actors_details; -- it will give the minimum Age from the Actors;

SELECT AVG(Actor_Age) AS average FROM movies.actors_details ; -- it will give the average


SELECT COUNT(*) AS Total_count FROM movies.actors_details; -- it will give the total count



