CREATE SCHEMA IF NOT EXISTS route500 ;



-- AERODROME
DROP TABLE IF EXISTS route500.aerodrome;
CREATE TABLE route500.aerodrome
(
    gid serial NOT NULL,
    id_rte500 smallint,
    id_troncon integer,
    toponyme character varying(50),
    geometry geometry(Point,4326),
    CONSTRAINT aerodrome_pkey PRIMARY KEY (gid)
) ;
