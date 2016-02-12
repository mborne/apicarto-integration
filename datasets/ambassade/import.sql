
CREATE TEMP TABLE ambassade_temp (
    libelle text,
    pays text,
    latitude real,
    longitude real
) ;

\copy ambassade_temp FROM 'ambassades.csv' DELIMITER ';' CSV HEADER

INSERT INTO ambassade (
    libelle,
    pays,
    geometry
)
SELECT
    libelle,
    pays,
    ST_SetSRID(ST_Point(longitude,latitude),4326)
FROM ambassade_temp;
