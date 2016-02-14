CREATE SCHEMA IF NOT EXISTS autolib ;

DROP TABLE IF EXISTS autolib.station ;
CREATE TABLE autolib.station
(
    gid serial NOT NULL,
    identifiant character varying(255),
    code_postal numeric,
    code_depart character varying(255),
    ville character varying(255),
    type_de_sta character varying(255),
    emplacement character varying(255),
    nom_de_la_s character varying(255),
    places_auto numeric,
    places_rech numeric,
    nombre_tota numeric,
    geometry geometry(Point,4326),
    CONSTRAINT autolib_pkey PRIMARY KEY (gid)
);

