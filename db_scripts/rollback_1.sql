/* Suppression de la contrainte de FOREIGN KEYS foreignKeysBandName
   Supression de la colonne bandName */
ALTER TABLE musician DROP FOREIGN KEY foreignKeysBandName;
ALTER TABLE musician
DROP COLUMN bandName;

/* Suppression des colonnes ROLE de MUSICIAN */
ALTER TABLE musician
DROP COLUMN role;

/* Renommer de la colonne musicianName -> singerName */
ALTER TABLE musician
RENAME COLUMN musicianName to singerName;

/* Renommer de la table MUSICIAN pour SINGER */
ALTER TABLE musician RENAME TO singer;

/* Supression de la table BAND */
DROP TABLE band;





