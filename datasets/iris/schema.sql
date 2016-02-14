CREATE SCHEMA IF NOT EXISTS iris ;

DROP TABLE IF EXISTS iris.contour ;
CREATE TABLE iris.contour
(
    gid serial NOT NULL,
    depcom character varying(5),
    nom_com character varying(45),
    iris character varying(4),
    dcomiris character varying(9),
    nom_iris character varying(45),
    typ_iris character varying(1),
    geometry geometry(MultiPolygon,4326),
    CONSTRAINT contour_pkey PRIMARY KEY (gid)
);

