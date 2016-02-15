INSERT INTO epci.epci
  SELECT
    FIRST(ec.dep_epci),
    ec.siren_epci,
    FIRST(nom_complet),
    FIRST(nj_epci2016),      -- CC
    FIRST(fisc_epci2016),    -- FPU
    FIRST(nb_com_epci_2016), -- 14
    FIRST(ptot_epci_2016),   -- 14255
    FIRST(pmun_epci_2016),    -- 13893
    ST_Multi(ST_Union(gc.geometry)) as geometry
  FROM epci.epci_commune ec
    LEFT JOIN geofla.commune gc
    	ON gc.insee_com = ec.insee
    GROUP BY siren_epci
;
