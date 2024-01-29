**Code SQL - Création de la base de données _artbox_** -  _V3. 28 Janvier 2024._

`CREATE TABLE Oeuvre(
Id_Oeuvre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
title VARCHAR(50),
description TEXT
);

CREATE TABLE Artist(
Id_Artist INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(50)
);

CREATE TABLE Image(
Id_Image INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
url VARCHAR(2048),
Id_Oeuvre INT NOT NULL,
FOREIGN KEY(Id_Oeuvre) REFERENCES Oeuvre(Id_Oeuvre)
);

CREATE TABLE Creer(
Id_Oeuvre INT,
Id_Artist INT,
FOREIGN KEY(Id_Oeuvre) REFERENCES Oeuvre(Id_Oeuvre),
FOREIGN KEY(Id_Artist) REFERENCES Artist(Id_Artist)
);`

--------------------------------------------------------------------------

CREATE TABLE Oeuvre(
Id_Oeuvre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
title VARCHAR(50),
artist VARCHAR(50),
image VARCHAR(2048),
description TEXT
);
