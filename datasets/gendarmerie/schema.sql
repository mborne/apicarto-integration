DROP TABLE IF EXISTS gendarmerie ;

CREATE TABLE gendarmerie (
    id serial primary key,
    service text,
    adresse_geographique text,
    telephone text,
    departement text,
    code_commune_insee text,
    voie text,
    code_postal text,
    commune text,
    geometry geometry(Point,4326)
) ;

