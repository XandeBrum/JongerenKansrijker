USE jongerekansrijker

CREATE TABLE activiteit(
	activiteitcode VARCHAR(3),
	activiteit VARCHAR(40),
	PRIMARY KEY (activiteitcode)
);


CREATE TABLE instituut(
	instituutscode VARCHAR(5),
	instituut VARCHAR(40),
	instituuttelefoon VARCHAR(11),
	PRIMARY KEY (instituutscode)
);

CREATE TABLE jongere(
	jongerecode VARCHAR(5),
	roepnaam VARCHAR(20),
	tussenvoegsel VARCHAR (7),
	achternaam VARCHAR (25),
	inschrijf DATE,
	PRIMARY KEY (jongerecode)
);



CREATE TABLE jongereinstituut(
	jongerecode VARCHAR(5),
	instituutscode VARCHAR(5),
	startdatum DATE,
	FOREIGN KEY (jongerecode) REFERENCES jongere(jongerecode),
	FOREIGN KEY (instituutscode) REFERENCES instituut(instituutscode)
);


CREATE TABLE jongereactiviteit(
	jongerecode VARCHAR (5),
	activiteitcode VARCHAR (3),
	startdatum DATE,
	afgerond TINYINT (1),
	FOREIGN KEY (jongerecode) REFERENCES jongere(jongerecode),
	FOREIGN KEY (activiteitcode) REFERENCES activiteit(activiteitcode)
);