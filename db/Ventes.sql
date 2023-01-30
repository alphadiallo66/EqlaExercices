/* On utilise l'encodage UTF8 */
charset utf8;

/*
CREATION DE LA DB ON LA SUPPRIME SI ELLE EXISTE DEJA
Ca permettra de vite relancer le script de création et vous permettre de corriger ici.
Le plus simple est donc de supprimer la base de données pour vous faire gagner du temps.
*/
DROP DATABASE IF EXISTS Ventes;
CREATE DATABASE Ventes;

/* On Change de base de données */
use Ventes;

/* Creation de la TABLE Produit */
SELECT "Table Produit";
CREATE TABLE Produit (
    IdProduit int NOT NULL AUTO_INCREMENT,
    Nom varchar(20) NOT NULL,
    Categorie varchar(20) NOT NULL,
    Stock int NOT NULL,
    Prix float NOT NULL,
    PRIMARY KEY(IdProduit)
);

/* Insertions dans la TABLE Produit */
SELECT "INSERT INTO Produit";
INSERT INTO Produit(Nom, Categorie, Stock, Prix)
VALUES('Ordinateur','Informatique',5,950);

INSERT INTO Produit(Nom, Categorie, Stock, Prix)
VALUES('Clavier','Informatique',32,35);

INSERT INTO Produit(Nom, Categorie, Stock, Prix)
VALUES('Souris','Informatique',16,30);

INSERT INTO Produit(Nom, Categorie, Stock, Prix)
VALUES('Crayon','Fourniture',147,2);

/* Creation de la TABLE Categorie */
CREATE TABLE Categorie(
    IdCategorie int NOT NULL AUTO_INCREMENT,
    Nom varchar(20) NOT NULL,
    PRIMARY KEY(IdCategorie)
);

/* Insertions dans la TABLE Categorie */
INSERT INTO Categorie(Nom)
VALUES('Informatique');

INSERT INTO Categorie(Nom)
VALUES('Fourniture');

/* Creation de la TABLE ProduitV2 */
CREATE TABLE ProduitV2 (
    IdProduit int NOT NULL AUTO_INCREMENT,
    Nom varchar(20) NOT NULL,
    Stock int NOT NULL,
    Prix float NOT NULL,
    IdCategorie int NOT NULL,
    PRIMARY KEY(IdProduit),
    FOREIGN KEY(IdCategorie) REFERENCES Categorie(IdCategorie)
);

/* Insertions dans la TABLE ProduitV2 */
INSERT INTO ProduitV2(Nom, IdCategorie, Stock, Prix)
VALUES('Ordinateur',1,5,950);

INSERT INTO ProduitV2(Nom, IdCategorie, Stock, Prix)
VALUES('Clavier',1,32,35);

INSERT INTO ProduitV2(Nom, IdCategorie, Stock, Prix)
VALUES('Souris',1,16,30);

INSERT INTO ProduitV2(Nom, IdCategorie, Stock, Prix)
VALUES('Crayon',2,147,2);

