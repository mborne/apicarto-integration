CREATE SCHEMA IF NOT EXISTS epci ;

DROP TABLE IF EXISTS epci.epci_commune ;
CREATE TABLE epci.epci_commune (
    dep_epci varchar(3),   --01
    siren_epci varchar(9), -- 200029999
    nom_complet text,      -- CC Rives de l'Ain - Pays du Cerdon
    nj_epci2016 text,      -- CC
    fisc_epci2016 text,    -- FPU
    nb_com_epci_2016 text, -- 14
    ptot_epci_2016 text,   -- 14255
    pmun_epci_2016 text,   -- 13893
    dep_com varchar(3),    -- 01
    insee varchar(5),      -- 01056
    siren_com varchar(9),  -- 210100566
    nom_com text,          -- Boyeux-Saint-Jérôme
    ptot_2016 text,        -- 379
    pmun_2016 text         -- 365
);

-- créée en post-traitement avec une geometrie issue de l'union des communes GEOFLA
DROP TABLE IF EXISTS epci.epci ;
CREATE TABLE epci.epci (
    dep_epci varchar(3),   -- 01
    siren_epci varchar(9), -- 200029999
    nom_complet text,      -- CC Rives de l'Ain - Pays du Cerdon
    nj_epci2016 text,      -- CC
    fisc_epci2016 text,    -- FPU
    nb_com_epci_2016 text, -- 14
    ptot_epci_2016 text,   -- 14255
    pmun_epci_2016 text,   -- 13893
    geometry geometry(MultiPolygon,4326)
);
