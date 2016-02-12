DROP TABLE IF EXISTS codes_postaux ;
CREATE TABLE codes_postaux (
    code_insee  VARCHAR(5),
    nom_commune text,
    code_postal VARCHAR(5),
    libelle_acheminement text
) ;
CREATE INDEX codes_postaux_insee_idx ON codes_postaux (code_insee);

\copy codes_postaux FROM 'codes_postaux_utf8.csv' DELIMITER ';' CSV HEADER
