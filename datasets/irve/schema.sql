CREATE SCHEMA IF NOT EXISTS irve ;

DROP TABLE IF EXISTS irve.station ;
CREATE TABLE irve.station (
    id serial primary key,             -- sequence
    id_station text,                   -- attention nullable et non unique
    nom_station text,                  -- nom de la station
    adresse_station text,              -- adresse
    nom_porteur text,
    type_charge text,
    nbre_pdc text,
    type_connecteur text,
    date_maj text,
    observations text,
    source text,
    geometry geometry(Point,4326)
);


