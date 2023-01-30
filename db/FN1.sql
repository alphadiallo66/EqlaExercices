/* On utilise l'encodage UTF8 */
charset utf8;

/*
CREATION DE LA DB ON LA SUPPRIME SI ELLE EXISTE DEJA
Ca permettra de vite relancer le script de création et vous permettre de corriger ici.
Le plus simple est donc de supprimer la base de données pour vous faire gagner du temps.
*/
DROP DATABASE IF EXISTS FN1;
CREATE DATABASE FN1;

/* On Change de base de données */
use FN1;

CREATE TABLE Student (
    Id int NOT NULL AUTO_INCREMENT,
    Nom varchar(20) NOT NULL,
    Prenom VARCHAR(20) NOT NULL,
    Sexe VARCHAR(2) NOT NULL,
    Password varbinary(255)  NOT NULL,
    Tel VARCHAR(100) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Formation VARCHAR(50) NOT NULL,
    CONSTRAINT c_Sexe  CHECK(Sexe IN ('M','F','NB','XX','T')),
    CONSTRAINT c_PRIMARY_Key PRIMARY KEY(Id)
);


INSERT INTO Student (Nom, Prenom, Password, Sexe, Tel, Email, Formation)
VALUES ('Piette','Johnny','toto','M','0478/89.14.85','joohnny.piette@gmail.com;piette.joohnny@gmail.com','BlindeCode');

INSERT INTO Student (Nom, Prenom, Password, Sexe, Tel, Email, Formation)
VALUES ('Zili','Margot','titi','F','0478/89.16.86;','joohnny.piette@gmail.com;piette.joohnny@gmail.com', 'BlindCode');

INSERT INTO Student (Nom, Prenom, Password, Sexe,Tel, Email, Formation)
VALUES ('Jacques','Véronique','tutu','F','0478/88.99.14','veve.jacques@gmail.com;jacques.veve@gmail.com','BlindKode');

INSERT INTO Student (Nom, Prenom, Password, Sexe,Tel, Email, Formation)
VALUES ('Piette Jacques','Raphaël','tyty','M','0478/18.91.11','raph.jacques@gmail.com;jacques.raph@gmail.com','BlindCode');





