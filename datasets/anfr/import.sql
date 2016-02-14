


\copy anfr.sup_support FROM 'data/SUP_SUPPORT_utf8.txt' DELIMITER ';' CSV HEADER

ALTER TABLE anfr.sup_support ADD COLUMN geometry geometry(Point,4326) ;

UPDATE  anfr.sup_support 
    SET geometry = anfr.dms_point(
        COR_NB_DG_LAT,
        COR_NB_MN_LAT,
        COR_NB_SC_LAT,
        COR_CD_NS_LAT,
        COR_NB_DG_LON,
        COR_NB_MN_LON,
        COR_NB_SC_LON,
        COR_CD_EW_LON
    )
;
