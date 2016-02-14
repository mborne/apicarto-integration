CREATE SCHEMA IF NOT EXISTS dila ;

-- tables des organismes
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

-- table de relation entre les communes et les organismes
DROP TABLE IF EXISTS dila.commune ;
CREATE TABLE dila.commune (
    insee text,             -- code insee de la commune
    nom text,               -- nom de la commune
    organisme_id text       -- identifiant de l'organisme
) ;


