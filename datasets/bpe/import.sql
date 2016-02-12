DROP TABLE IF EXISTS equipement ;
CREATE TABLE equipement (
    id serial primary key,
    annee text,
    insee text,
    dciris text,
    type text,
    qualite_xy text,
    geometry geometry(Point,4326)
) ;


CREATE TEMP TABLE bpe_temp (
    AN text,
    REG text,
    DEP text,
    DEPCOM text,
    DCIRIS text,
    TYPEQU text,
    LAMBERT_X real,
    LAMBERT_Y real,
    QUALITE_XY text
) ;

\copy bpe_temp FROM 'bpe.csv' DELIMITER ',' CSV HEADER

INSERT INTO equipement (
    annee,
    insee,
    dciris,
    type,
    qualite_xy,
    geometry
)
SELECT 
    AN, 
    DEPCOM,
    DCIRIS,
    TYPEQU,
    QUALITE_XY,
    ST_Transform(
        ST_SetSRID(ST_Point(LAMBERT_X,LAMBERT_Y),27572),
        4326
    )
FROM bpe_temp;
