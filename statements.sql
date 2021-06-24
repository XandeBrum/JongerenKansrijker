CREATE DATABASE jongerekansrijker;

USE jongerekansrijker

CREATE TABLE activiteit(
	activiteitcode INT NOT NULL AUTO_INCREMENT,
	activiteit VARCHAR(255) NOT NULL,
	PRIMARY KEY (activiteit)
);


CREATE TABLE instituut(
	instituutcode INT NOT NULL AUTO_INCREMENT,
	instituut VARCHAR(255) NOT NULL,
	instituuttelefoon VARCHAR(255),
	PRIMARY KEY (instituutcode)
);

CREATE TABLE jongere(
	jongerecode INT NOT NULL AUTO_INCREMENT,
	roepnaam VARCHAR(255) NOT NULL, 
	tussenvoegsel VARCHAR (255),
	achternaam VARCHAR (255) NOT NULL,
	inschrijfdatum DATE NOT NULL,
	PRIMARY KEY (jongerecode)
);



CREATE TABLE jongereinstituut(
	jongereinstituutcode INT NOT NULL AUTO_INCREMENT,
	jongerecode INT NOT NULL AUTO_INCREMENT,
	instituutscode INT NOT NULL AUTO_INCREMENT,
	startdatum DATE NOT NULL,
	PRIMARY KEY (jongereinstituutcode),
	FOREIGN KEY (jongerecode) REFERENCES jongere(jongerecode),
	FOREIGN KEY (instituutscode) REFERENCES instituut(instituutscode)
);


CREATE TABLE jongereactiviteit(
	jongereactiviteitcode INT NOT UNLL AUTO_INCREMENT,
	jongerecode INT NOT NULL,
	activiteitcode INT NOT NULL,
	startdatum DATE NOT NULL,
	afgerond TINYINT,
	PRIMARY KEY (jongereactiviteitcode),
	FOREIGN KEY (jongerecode) REFERENCES jongere(jongerecode),
	FOREIGN KEY (activiteitcode) REFERENCES activiteit(activiteitcode)
);

CREATE TABLE medewerker(
	medewerkercode INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(255) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL,
	PRIMARY KEY (medewerkercode)
);