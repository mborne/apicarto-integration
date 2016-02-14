CREATE SCHEMA IF NOT EXISTS ban ;

DROP TABLE IF EXISTS ban.adresse ;
CREATE TABLE ban.adresse(
    gid serial NOT NULL,
    id text,
    nom_voie text,
    id_fantoir text,
    numero text,
    rep text,
    code_insee text,
    code_post text,
    alias text,
    nom_ld text,
    x numeric,
    y numeric,
    commune text,
    fant_voie text,
    fant_ld text,
    geometry geometry(Point,4326),
    CONSTRAINT adresse_pkey PRIMARY KEY (gid)
) ;

