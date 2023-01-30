/* On utilise l'encodage UTF8 */
charset utf8;

/*
CREATION DE LA DB ON LA SUPPRIME SI ELLE EXISTE DEJA
Ca permettra de vite relancer le script de création et vous permettre de corriger ici.
Le plus simple est donc de supprimer la base de données pour vous faire gagner du temps.
*/
DROP DATABASE IF EXISTS BlindCode;
CREATE DATABASE BlindCode;

/* On Change de base de données */
use BlindCode;

/*
CREATION DE LA TABLE CLASSE
On doit créer en premier la table Classe car le champ IdClasse, qui est clé primaire de la table classe, sera utilisé dans la table Eleve comme clé étrangère
AUTO_INCREMENT signifie qu'on va laisser le SGBD générer une clef automatique qui va s'incrémenter de 1 à chaque ajout dans la table. Il est à mettre lors de la définition de l'attribut que l'on veut auto-incrémenter.
PRIMARY KEY (IdClasse) défini la clé primaire sur le champ IdClasse
La creation d'une table se fait par la commande CREATE TABLE
Inspirez-vous de la creation de la table Eleve pour créer la table Classe.
Il doit y avoir comme champs:
IdClasse: entier
Nom
Lieu
Et évidemment définir l'IdClasse comme une clef primaire

N'OUBLIEZ PAS QUE TOUTE INSTRUCTION DANS MYSQL SE TERMINER PAR UN POINT VIRGULE !!!

A vous de jouer ! :)
*/
CREATE TABLE Classe (
    IdClasse int NOT NULL AUTO_INCREMENT,
    Nom varchar(20) NOT NULL,
    Lieu varchar(20) NOT NULL,
    PRIMARY KEY(IdClasse)
);

/*
CREATION DE LA TABLE ELEVE
On peut créer maintenant la table Eleve et faire référence à la clé étrangère IdClass de la table Classe
CHECK(Sexe IN ('M','F'))   Astuce permettant de vérifier que la valeur qui sera insérée dans la DB sera soit 'M' ou 'F'
DEFAULT donne une valeur par défaut. Ici le champ Actif est par défaut à 1 (true) car comme on vient de le créer, il est actif.
*/
CREATE TABLE Eleve (
    IdEleve int NOT NULL AUTO_INCREMENT,
    Prenom varchar(20) NOT NULL,
    Nom varchar(20) NOT NULL,
    Naissance date NOT NULL,
    RN varchar(20) UNIQUE NOT NULL,
    Actif boolean NOT NULL DEFAULT 1,
    Nationalite varchar(20) NOT NULL,
    Rue varchar(50) NOT NULL,
    Numero varchar(5) NULL,
    Boite varchar(3) NULL,
    CP int NOT NULL,
    Localite varchar(30) NOT NULL,
    Sexe char(1) NOT NULL CHECK(Sexe IN ('M','F')),
    Email varchar(40),
    Tel varchar(20),
    GSM varchar(20),
    IdClasse int NOT NULL,
    PRIMARY KEY (IdEleve),
    FOREIGN KEY (IdClasse) REFERENCES Classe(IdClasse)
);

/*
INSERTION D'ENREGISTREMENTS DANS LA TABLE CLASSE
On doit en premier avoir des classes sans ça, on ne pourrait pas créer des élèves.
En effet, 1 élève fait partie d'1 et une seule classe. Donc la classe doit exister avant.
On va donc ajouter deux classes: la classe BlindCode et la classe BlindCode4Data
On utilise la commande INSERT
Voici la syntaxe:  INSERT INTO LaTable (nomChamp1,nomChamp2,nomChamp3,nomChamp4) VALUES ('valeurNomChamp1','valeurNomChamp2','valeurNomChamp3','valeurNomChamp4');
Vu que vous avez deux classes à ajouter (deux enregistrements), vous devrez écrire deux instructions INSERT INTO. L'une pour la classe BlindCode, l'autre pour BlindCode4Data

N'OUBLIEZ PAS QUE TOUTE INSTRUCTION DANS MYSQL DOIT SE TERMINER PAR UN POINT VIRGULE !!!

A vous de jouer ! :)
*/
INSERT INTO Classe (Nom, Lieu) VALUES ('BlindCode','BXL');
INSERT INTO Classe (Nom, Lieu) VALUES ('BlindCode4Data','LLN');

/* Eleve BlindCode4Data */
INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('Sana','Eleonor','1997-07-1','521298798787','1','Belge','Rue des écoles','3', NULL,'1490', 'Cours-St-Etienne','F','eleonorsana97@gmail.com',NULL,'0472 03 09 46',2 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('Kizmaz','Mashum','1991-02-7','19798798787','1','Belge','Rue de l''Espoir','2', NULL,'4800', 'Verviers','M','mahsumkizmaz@gmail.com','04/338.67.69','0498 25 34 88',2 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('Tcheuyassi','Isaac','1987-06-08','8498798787','1','Camerounais','Place de l''Hirondelle','98', NULL,'5001', 'Belgrade','M','tcheuyassiisaac@yahoo.com',NULL,'0476 78 67 69',2 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('Dufrasne','Alain','1972-11-15','1298798787','1','Belge','Avenue du SQL','9', NULL,'7300', 'Boussu','M','alduf@live.be',NULL,'0472 07 85 65',2 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('Borsen','Maxime','1993-12-23','8798798787','1','Belge','Rue de l''INSERTion','30', NULL,'1348', 'LLN','M','maxime.borsen@gmail.com',NULL,'0479 97 74 52',2 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('Bakashika','Jessie','1995-05-19','6598798787','1','Belge','Place des martyrs des SGBD','5', NULL,'1348', 'LLN','M','jessie.bakashika@gmail.com',NULL,'0496 67 89 11',2 );
/* Eleve BlindCode */
INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('DARFEUILLE','Matthieu','1985-11-10','126598798787','1','Belge','Rue des Push','5', NULL,'4140', 'Dolembreux','M','DARFEUILLE.Matthieu@yahoo.fr',NULL,'0496 22 89 22',1 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('DESSEILLE','Simon','1987-11-14','216598798787','1','Belge','Rue des Pull','5', NULL,'6890', 'Libin','M','DESSEILLE.Simon@gmail.com',NULL,'0486 89 89 33',1 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('DEFALQUE','Bruno','1965-05-19','346598798787','1','Belge','Place du corps qui GIT','5', NULL,'6890', 'Redu','M','DEFALQUE.Bruno@gmail.com',NULL,'0496 14 89 99',1 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('TAMDITI','Ibrahim','1974-03-17','456598798787','1','Belge','Place des SGBD','5', NULL,'4052', 'Beaufays','M','TAMDITI.Ibrahim@gmail.com',NULL,'0473 77 28 27',1 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('De BACKER','Sophie','1978-09-9','566598798787','1','Belge','Rue des Requêtes','5', NULL,'4161', 'Esneux','F','DeBACKER.Sophie@gmail.com',NULL,'0497 88 89 12',1 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('BEYA','Yves','1980-11-27','656598798787','1','Belge','Rue des Tables','5', '11','4800', 'Verviers','M','BEYA.Yves@gmail.com',NULL,'0474 67 89 78',1 );

INSERT INTO Eleve (Nom, Prenom, Naissance, RN,Actif,Nationalite,Rue,Numero,Boite,CP,Localite,Sexe,Email,Tel,GSM,IdClasse)
VALUES('BEN AHMED','Mounir','1991-01-3','786598798787','1','Belge','Rue de l''Etude','5', NULL,'4102', 'Ougrée','M','BENAHMED.Mounir@gmail.com',NULL,'0479 47 89 96',1 );

DROP FUNCTION IF EXISTS GetAge;
CREATE FUNCTION GetAge(birthdate Date) returns int DETERMINISTIC
return YEAR(CURDATE())-YEAR(birthdate);
