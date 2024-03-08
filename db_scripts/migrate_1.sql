/* Création de la nouvelle table BAND en se basant sur le modèle de LABEL */
CREATE TABLE band like label;

/* Création de la nouvelle table BAND en se basant sur le modèle de LABEL */
ALTER TABLE band
RENAME COLUMN labelName to bandName;

/* Ajout des tuples dans BAND */
INSERT INTO band
VALUES ('Crazy Duo', 2015, 'rock'),
       ('Luna', 2009, 'classical'),
       ('Mysterio', 2019, 'pop');

/* Renommer de la table SINGER pour MUSICIAN */
ALTER TABLE singer RENAME TO musician;

/* Renommer de la colonne singerName -> musicianName */
ALTER TABLE musician
RENAME COLUMN singerName to musicianName;

/* Ajout de la colonne ROLE dans MUSICIAN */
ALTER TABLE musician
ADD COLUMN role varchar(50);

/* Ajout de la colonne bandName dans MUSICIAN */
ALTER TABLE musician
ADD COLUMN bandName varchar(50);

/* Ajout de la contrainte de FOREIGN KEYS sur la colonne bandName dans la table MUSICIAN */
ALTER TABLE musician
ADD CONSTRAINT foreignKeysBandName
FOREIGN KEY (bandName) REFERENCES band(bandName);

/* Mise à jour des valeurs des colonnes ROLE, BANDNAME pour MUSICIAN */
UPDATE musician
SET musician.role =
    CASE
        WHEN musicianName = 'Alina' THEN 'vocals'
        WHEN musicianName = 'Mysterio' THEN 'guitar'
        WHEN musicianName = 'Rainbow' THEN 'percussion'
        WHEN musicianName = 'Luna' THEN 'piano'
    END,
    musician.bandName =
    CASE
        WHEN musicianName = 'Alina' THEN 'Crazy Duo'
        WHEN musicianName = 'Mysterio' THEN 'Mysterio'
        WHEN musicianName = 'Rainbow' THEN 'Crazy Duo'
        WHEN musicianName = 'Luna' THEN 'Luna'
    END;

