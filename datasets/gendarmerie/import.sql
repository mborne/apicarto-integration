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

CREATE TEMP TABLE gendarmerie_temp (
    service text,
    adresse_geographique text,
    telephone text,
    departement text,
    code_commune_insee text,
    voie text,
    code_postal text,
    commune text,
    geocodage_epsg text,
    geocodage_x text,
    geocodage_y text,
    geocodage_x_GPS text,
    geocodage_y_GPS text
) ;

\copy gendarmerie_temp FROM 'gendarmerie.csv' DELIMITER ';' CSV HEADER QUOTE '"'

INSERT INTO gendarmerie (
    service,
    adresse_geographique,
    telephone,
    departement,
    code_commune_insee,
    voie,
    code_postal,
    commune,
    geometry
)
SELECT
    service,
    adresse_geographique,
    telephone,
    departement,
    code_commune_insee,
    voie,
    code_postal,
    commune,
    CASE 
        WHEN geocodage_x_GPS = '' THEN null
        ELSE ST_SetSRID(ST_Point(geocodage_x_GPS::real,geocodage_y_GPS::real),4326)
    END
FROM gendarmerie_temp;
