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
CREATE TABLE hobbies (
	hobbies_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hobby_name VARCHAR(25),
    student_id int
    );
ALTER TABLE tekcampers 
	ADD PRIMARY KEY (id);
ALTER TABLE hobbies
	ADD FOREIGN KEY (student_id) REFERENCES ta_Dylan_Fellows(id);
INSERT INTO hobbies (hobby_name)
 VALUES 
	("Reading"),
	("Motorcycle Riding"), 
    ("Video games"),
    ("Golfing"),
    ("Cattle Rustling"),
    ("Gardening"), 
    ("Yoga"),
	("Running"), 
    ("Video games"),
    ("Work out"),
    ("Pickle ball"),
    ("Projects"), 
    ("Jiu Jitsu"),
    ("Writing"),
    ("Cooking"),
    ("Eating"),
    ("Music"),
	("Hockey"), 
    ("Soccer"),
    ("Longboarding"),
    ("Growing hot peppers"),
	("Reading"),
	("Soccer"), 
    ("Eating"),
    ("Gaming"),
    ("Video games")
    ;
UPDATE hobbies SET student_id = 28 WHERE hobbies_id = 6;
UPDATE hobbies SET student_id = 19  WHERE hobbies_id = 1;
UPDATE hobbies SET student_id = 18  WHERE hobbies_id = 3;
UPDATE hobbies SET student_id = 17 WHERE hobbies_id = 7;
UPDATE hobbies SET student_id = 18  WHERE hobbies_id = 9;
UPDATE hobbies SET student_id = 14  WHERE hobbies_id = 10;
UPDATE hobbies SET student_id = 10 WHERE hobbies_id = 2;
UPDATE hobbies SET student_id = 6  WHERE hobbies_id = 4;
UPDATE hobbies SET student_id = 2  WHERE hobbies_id = 5;
UPDATE hobbies SET student_id = 34 WHERE hobbies_id = 8;
UPDATE hobbies SET student_id = 12  WHERE hobbies_id = 11;
UPDATE hobbies SET student_id = 5  WHERE hobbies_id = 12;
UPDATE hobbies SET student_id = 7 WHERE hobbies_id = 13;
UPDATE hobbies SET student_id = 11  WHERE hobbies_id =14;
UPDATE hobbies SET student_id = 32  WHERE hobbies_id = 15;
UPDATE hobbies SET student_id = 8 WHERE hobbies_id = 16;
UPDATE hobbies SET student_id = 4  WHERE hobbies_id = 17;
UPDATE hobbies SET student_id = 25  WHERE hobbies_id = 18;
UPDATE hobbies SET student_id = 35 WHERE hobbies_id = 19;
UPDATE hobbies SET student_id = 21  WHERE hobbies_id = 20;
UPDATE hobbies SET student_id = 38  WHERE hobbies_id = 21;
UPDATE hobbies SET student_id = 1 WHERE hobbies_id = 22;
UPDATE hobbies SET student_id = 16 WHERE hobbies_id = 23;
UPDATE hobbies SET student_id = 36 WHERE hobbies_id = 24;
UPDATE hobbies SET student_id = 15 WHERE hobbies_id = 25;
UPDATE hobbies SET student_id = 30 WHERE hobbies_id = 26;
INSERT INTO hobbies (hobby_name)
 VALUES 
	("Horse riding"),
    ("Interior decoration"),
    ("Eat, Sleep & Code");
UPDATE hobbies SET student_id = 3 WHERE hobbies_id = 27;
UPDATE hobbies SET student_id = 13 WHERE hobbies_id = 28;
UPDATE hobbies SET student_id = 29 WHERE hobbies_id = 29;
SELECT * FROM  hobbies;
SELECT *
FROM ta_Dylan_Fellows
LEFT JOIN hobbies ON ta_Dylan_Fellows.id=hobbies.student_id;
ALTER TABLE tekcampers ADD bootcamp VARCHAR(25);
UPDATE tekcampers
SET bootcamp = 'Coding Dojo'
WHERE id = 6 OR id = 12 OR id = 7;
UPDATE tekcampers
SET bootcamp = 'DevMountain'
WHERE id = 25 OR id = 17;
UPDATE tekcampers
SET bootcamp = 'Trilogy Education'
WHERE id = 32 OR id = 36;
UPDATE tekcampers
SET bootcamp = 'SMU Coding Bootcamp'
WHERE id = 21;
UPDATE tekcampers
SET bootcamp = 'US Navy Bootcamp'
WHERE id = 2;
ALTER TABLE ta_Dylan_Fellows ADD bootcamp VARCHAR(25);
UPDATE ta_Dylan_Fellows 
SET ta_Dylan_Fellows.bootcamp = tekcampers.bootcamp
WHERE ta_Dylan_Fellows.id = tekcampers.id; 