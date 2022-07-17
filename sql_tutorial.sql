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