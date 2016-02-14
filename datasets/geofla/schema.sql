CREATE SCHEMA IF NOT EXISTS geofla ;

DROP TABLE  IF EXISTS geofla.commune CASCADE ;
CREATE TABLE geofla.commune
(
  gid serial NOT NULL,
  id_geofla character varying(24),
  code_com character varying(3),
  insee_com character varying(5),
  nom_com character varying(50),
  statut character varying(25),
  x_chf_lieu integer,
  y_chf_lieu integer,
  x_centroid integer,
  y_centroid integer,
  z_moyen smallint,
  superficie double precision,
  population numeric(10,0),
  code_cant character varying(2),
  code_arr character varying(1),
  code_dept character varying(3),-- fixed
  nom_dept character varying(30),
  code_reg character varying(2),
  nom_reg character varying(35),
  geometry geometry(MultiPolygon,4326),
  CONSTRAINT commune_pkey PRIMARY KEY (gid)
) ;


DROP TABLE IF EXISTS geofla.departement CASCADE ;
CREATE TABLE geofla.departement (
  code_dept character varying(3) primary key,
  nom_dept character varying(30),
  superficie double precision,
  population numeric(10,0),
  code_reg character varying(2),
  nom_reg character varying(35),
  geometry geometry(MultiPolygon,4326)
);

DROP TABLE IF EXISTS geofla.region CASCADE ;
CREATE TABLE geofla.region (
  code_reg character varying(2) primary key,
  nom_reg character varying(35),
  superficie double precision,
  population numeric(10,0),
  geometry geometry(MultiPolygon,4326)
);








