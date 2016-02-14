CREATE SCHEMA IF NOT EXISTS anfr ;

CREATE OR REPLACE FUNCTION anfr.dms_point(
    dg_lat real,
    mn_lat real,
    sc_lat real,
    ns_lat varchar(1),
    dg_lon real,
    mn_lon real,
    sc_lon real,
    ew_lon varchar(1)
) RETURNS geometry AS $$
DECLARE
    lon real := 0.0 ;
    lat real := 0.0 ;
BEGIN
    IF ns_lat IS NULL OR ew_lon IS NULL 
    THEN
        RETURN NULL;
    END IF;
    
    IF ew_lon = 'E' 
    THEN
        lon := dg_lon + mn_lon / 60.0 + sc_lon / 3600.0 ;
    ELSE
        lon := - dg_lon + mn_lon / 60.0 + sc_lon / 3600.0 ;
    END IF;
    
    IF ns_lat = 'N'
    THEN
        lat := dg_lat + mn_lat / 60.0 + sc_lat / 3600.0 ;
    ELSE
        lat := - dg_lat + mn_lat / 60.0 + sc_lat / 3600.0 ;
    END IF;
    
    RETURN ST_SetSRID(ST_Point(lon,lat),4326);
END;
$$ LANGUAGE plpgsql;


-- SUP_SUPPORT.txt    
DROP TABLE IF EXISTS anfr.sup_support ;
CREATE TABLE anfr.sup_support (
    SUP_ID text,
    STA_NM_ANFR text,
    NAT_ID text,
    COR_NB_DG_LAT real,
    COR_NB_MN_LAT real,
    COR_NB_SC_LAT real,
    COR_CD_NS_LAT varchar(1),
    COR_NB_DG_LON real,
    COR_NB_MN_LON real,
    COR_NB_SC_LON real,
    COR_CD_EW_LON varchar(1),
    SUP_NM_HAUT text,
    TPO_ID text,
    ADR_LB_LIEU text,
    ADR_LB_ADD1 text,
    ADR_LB_ADD2 text,
    ADR_LB_ADD3 text,
    ADR_NM_CP text,
    COM_CD_INSEE text
);

-- SUP_STATION.txt    
-- SUP_ANTENNE.txt    
-- SUP_EMETTEUR.txt   
-- SUP_BANDE.txt


