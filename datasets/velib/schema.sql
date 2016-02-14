CREATE SCHEMA IF NOT EXISTS velib ;

DROP TABLE IF EXISTS velib.station;
CREATE TABLE velib.station
(
    gid serial NOT NULL,
    "number" character varying(255),
    name character varying(255),
    address character varying(255),
    dept numeric,
    cp numeric,
    ville character varying(255),
    latitude character varying(255),
    longitude character varying(255),
    geometry geometry(Point,4326),
    CONSTRAINT velib_pkey PRIMARY KEY (gid)
) ;

