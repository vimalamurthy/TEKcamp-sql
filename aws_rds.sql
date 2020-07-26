CREATE DATABASE tc1_Vimala_Murthy;
USE tc1_Vimala_Murthy;
CREATE TABLE tekcampers (
	id INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    gender CHAR(1),
    education VARCHAR(20)
    );
INSERT INTO tekcampers (id, first_name, last_name, gender, education) 
VALUES (28, "Vimala", "Murthy", "F", "Masters");
INSERT INTO tekcampers (id, first_name, last_name, gender, education) 
	VALUES (29, "John", "Kol", "M", "Null"),
		(30, "Kevin","Keese","M", "Diploma"),
        (31,"Aaron","White","M","Null");
INSERT INTO tekcampers (id, first_name, last_name, gender, education) 
VALUES (32, "Cody", "Clark", "M", "Null"),
		(33, "Devon", "Brewster", "M", "Null"),
        (34, "Gotham", "Katta","M", "Null"),
        (35, "John","Bozarov", "M", "Null"),
        (36, "Justin", "Cheng", "M", "Null"),
        (37, "Monica", "Howard", "F", "Null"),
        (38,"Tyler","Clements", "M", "Null");  
INSERT INTO tekcampers (id, first_name, last_name, gender, education) 
	VALUES (1, "Abigail", "Swigert", "F", "Bachelors"),
		(2, "Gabe","Chavez","M", "Null"),
        (3,"Nancy","Golden","F","Masters"),
        (4, "Jessica", "Ulysse", "F", "Bachelors"),
        (5, "Sabitha", "Radhakrishnan", "F", "Bachelors"),
        (6, "Adam", "Rice", "M", "Bachelors"),
        (7, "Marcelo", "Barbosa", "M", "College"),
        (8, "Caleb", "Waters", "M", "Associates"),
        (9,"Norita","Sieffert","F","Doctorate"),
        (10,"Katherine","Kim","F","Bachelors")
        ;
INSERT INTO tekcampers (id, first_name, last_name, gender, education) 
	VALUES (12, "Julian", "Ladd", "M", "College"),
		(13, "Vani","Muppuru","F", "Masters"),
        (14,"Kevin","Ibanez","M","High School"),
        (15, "George", "Torres", "M", "College"),
        (16, "Jose", "Moreno", "M", "Bachelors"),
        (17, "Phoenix", "Shane", "F", "Associates"),
        (18, "Mathew", "Castiglione", "M", "Bachelors"),
        (19, "Victor", "Betts", "M", "College"),
        (21,"Mathew","Choat","M","Masters"),
        (22,"Michael","Kinney","M","Null"),
        (23, "Korey", "Brooks", "M", "Null"),
        (24, "Christian", "Gonzalez", "M", "College"),
        (25, "Zachary", "Johnson", "M", "High School"),
        (27, "Sarah", "Bates", "F", "Null")
        ;
SELECT * FROM tekcampers;
SELECT * FROM tekcampers
 WHERE LENGTH(last_name) > 7;
 SELECT * FROM tekcampers
 ORDER BY first_name;
 SELECT * FROM tekcampers
 ORDER BY last_name;
 SELECT * FROM tekcampers
 WHERE gender ="M";
 SELECT * FROM tekcampers
 WHERE gender ="F";
 SELECT * FROM tekcampers
 WHERE education ="Masters";
 SELECT * FROM tekcampers
 WHERE education ="Bachelors";
 SELECT * FROM tekcampers
 WHERE education ="Associates";
 SELECT * FROM tekcampers
	WHERE education = "High School" OR 
    education ="Null";
CREATE TABLE ta_Dylan_Fellows AS
	SELECT * FROM tekcampers;
    SET SQL_SAFE_UPDATES = 0;
DELETE FROM ta_Dylan_Fellows
	WHERE (id <5 AND id <> 3);
SELECT * FROM ta_Dylan_Fellows;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM ta_Dylan_Fellows
	WHERE (id BETWEEN 6 AND 8);
DELETE FROM ta_Dylan_Fellows
	WHERE (id =16);
DELETE FROM ta_Dylan_Fellows
	WHERE id =12;
DELETE FROM ta_Dylan_Fellows
	WHERE id =17;
SELECT * FROM ta_Dylan_Fellows;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM ta_Dylan_Fellows
	WHERE id BETWEEN 20 AND 27;
SELECT * FROM ta_Dylan_Fellows;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM ta_Dylan_Fellows
	WHERE id BETWEEN 30 AND 38;
SELECT * FROM ta_Dylan_Fellows;
INSERT INTO ta_Dylan_Fellows 
	(id, first_name, last_name, gender, education) 
	VALUES 
		 (4, "Jessica", "Ulysse", "F", "Bachelors");
SELECT * FROM ta_Dylan_Fellows ORDER BY first_name;