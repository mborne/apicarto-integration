
CREATE TEMP TABLE organisme_temp (
    id text primary key,
    type text,
    nom text,
    insee text,
    source text,
    maj text,
    url text,
    telephone text,
    telecopie text,
    email text,
    ouvertures text,
    adresse text,
    accessibilite text,
    longitude real,
	latitude real
) ;

\copy organisme_temp FROM 'organisme.csv' DELIMITER ',' CSV HEADER

INSERT INTO dila.organisme (
    id,
    type,
    nom,
    insee,
    source,
    maj,
    url,
    telephone,
    telecopie,
    email,
    ouvertures,
    adresse,
    geometry
)
SELECT
    id,
    type,
    nom,
    insee,
    source,
    maj,
    url,
    telephone,
    telecopie,
    email,
    ouvertures,
    adresse,
    ST_SetSRID(ST_Point(longitude,latitude),4326)
FROM organisme_temp;
