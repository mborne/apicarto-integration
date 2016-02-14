CREATE SCHEMA IF NOT EXISTS ban ;

DROP TABLE IF EXISTS ban.adresse ;
CREATE TABLE ban.adresse(
    gid serial NOT NULL,
    id character varying(80),
    nom_voie character varying(80),
    id_fantoir character varying(80),
    numero character varying(80),
    rep character varying(80),
    code_insee character varying(80),
    code_post character varying(80),
    alias character varying(80),
    nom_ld character varying(80),
    x numeric,
    y numeric,
    commune character varying(80),
    fant_voie character varying(80),
    fant_ld character varying(80),
    geometry geometry(Point,4326),
    CONSTRAINT adresse_pkey PRIMARY KEY (gid)
) ;

