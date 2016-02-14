CREATE SCHEMA IF NOT EXISTS dila ;

DROP TABLE IF EXISTS dila.organisme ;
CREATE TABLE dila.organisme (
    id text primary key,
    type text,
    nom text,
    insee text,
    source text,
    maj text,
    url text,
    telephone text,
    telecopie text,
    email text,
    ouvertures text,
    adresse text,
    accessibilite text,
    geometry geometry(Point,4326)
) ;

-- TODO dila.commune



