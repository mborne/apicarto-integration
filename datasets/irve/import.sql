
CREATE TEMP TABLE irve_temp (
    ID_station text,
    nom_station text,
    adresse_station text,
    latitude real,
    longitude real,
    nom_porteur text,
    type_charge text,
    nbre_pdc text,
    type_connecteur text,
    date_maj text,
    observations text,
    source text
);

\copy irve_temp FROM 'irve.csv' CSV HEADER

INSERT INTO irve.station 
    (
        id_station,
        nom_station,
        adresse_station,
        nom_porteur,
        type_charge,
        nbre_pdc,
        type_connecteur,
        date_maj,
        observations,
        source,
        geometry
    )
    SELECT 
        id_station,
        nom_station,
        adresse_station,
        nom_porteur,
        type_charge,
        nbre_pdc,
        type_connecteur,
        date_maj,
        observations,
        source,
        ST_SetSRID(ST_Point(longitude,latitude),4326)
    FROM irve_temp
;
