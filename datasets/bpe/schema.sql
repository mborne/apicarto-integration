CREATE SCHEMA IF NOT EXISTS bpe ;

DROP TABLE IF EXISTS bpe.equipement ;
CREATE TABLE bpe.equipement (
    id serial primary key,
    annee text,
    insee text,
    dciris text,
    type text,
    qualite_xy text,
    geometry geometry(Point,4326)
) ;

