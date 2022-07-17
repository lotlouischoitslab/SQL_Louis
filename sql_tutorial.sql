#Tips for coding in SQL, if you want to run a certain line of code, all you got to do is to highlight that chunk of line and press the thunderbolt button
DROP TABLE albums;
DROP TABLE bands;

CREATE DATABASE record_company; #create record company
USE record_company; #use that database

CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT, #auto increment the id each time
	name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT, 
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id) 
);

INSERT INTO bands (name)
VALUES ('AESPA');

INSERT INTO bands (name)
VALUES ('BTS'), ('IVE') , ('ITZY'); 

#Query all the data
SELECT * FROM bands; #select every column

SELECT *FROM bands LIMIT 2; #limit to 2 bands

SELECT name FROM bands; #only get the name columns

SELECT id AS 'ID', name AS 'Band Name'
FROM bands;

SELECT * FROM bands ORDER BY name; #alphabetical name
# SELECT * FROM bands ORDER BY name DESC; #reverse alphabetical

-- Band ID Information
-- id 1: AESPA
-- id 2: BTS
-- id 3: IVE
-- id 4: ITZY

INSERT INTO albums (name,release_year, band_id)
VALUES('Savage',2021,1), #id 1 for AESPA
	 ('Girls',2022,1), #id 1 for AESPA
     ('BE',2020,2), #id 2 for BTS
     ('ROYAL',3,2022), #id 3 for IVE
     ('NotShy',4,2020); #id 4 for ITZY
     
SELECT * FROM albums;