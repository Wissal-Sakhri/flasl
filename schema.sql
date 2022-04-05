DROP TABLE IF EXISTS personne ;
DROP TABLE IF EXISTS admine ;
DROP TABLE IF EXISTS salle ;
DROP TABLE IF EXISTS enter;
DROP TABLE IF EXISTS sortir;
DROP TABLE IF EXISTS gerer;

CREATE TABLE personne (
    numPersonne INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT ,
    poste TEXT,
    idImage INTEGER ,
    etat INTEGER  ,
);
CREATE TABLE admine (
    numAdmin INTEGER PRIMARY KEY AUTOINCREMENT ,
    adress TEXT,
    mpd TEXT
);
CREATE TABLE salle (
    numSalle INTEGER PRIMARY KEY,
    capacite INTEGER
);
CREATE TABLE enter (
    numPersonne INTEGER,
    numSalle INTEGER ,
    datee date ,
    FOREIGN KEY(numPersonne) REFERENCES personne(numPersonne) ,
    FOREIGN KEY(numSalle) REFERENCES salle(numSalle),
    PRIMARY KEY (numPersonne,numSalle,datee)

);
CREATE TABLE sortir (
    numPersonne INTEGER,
    numSalle INTEGER ,
    datee date ,
    FOREIGN KEY(numPersonne) REFERENCES personne(numPersonne) ,
    FOREIGN KEY(numSalle) REFERENCES salle(numSalle),
    PRIMARY KEY (numPersonne,numSalle,datee)
);
CREATE TABLE gerer (
    numAdmin INTEGER,
    numPersonne INTEGER,
    operation TEXT,
    FOREIGN KEY(numPersonne) REFERENCES personne(numPersonne) ,
    FOREIGN KEY(numAdmin) REFERENCES admine(numAdmin) ,
    PRIMARY KEY (numPersonne,numAdmin,operation)


);
