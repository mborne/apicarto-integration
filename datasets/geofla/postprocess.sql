-- fix code_dept et code_com pour 97*
UPDATE geofla.commune 
	SET 
        code_dept = substring(insee_com for 3),
        code_com = substring(insee_com from 4 for 2)
	WHERE insee_com LIKE '97%'
;



-- Create a function that always returns the first non-NULL item
CREATE OR REPLACE FUNCTION public.first_agg ( anyelement, anyelement )
RETURNS anyelement LANGUAGE SQL IMMUTABLE STRICT AS $$
        SELECT $1;
$$;
 
-- And then wrap an aggregate around it
DROP AGGREGATE IF EXISTS public.FIRST;
CREATE AGGREGATE public.FIRST (
        sfunc    = public.first_agg,
        basetype = anyelement,
        stype    = anyelement
);

INSERT INTO geofla.departement 
	SELECT 
		code_dept,
		nom_dept, 
		SUM(superficie),
		SUM(population),
		first(code_reg),
		first(nom_reg),
		ST_Multi(ST_Union(geometry))
	FROM geofla.commune
	GROUP BY code_dept, nom_dept
;


INSERT INTO geofla.region 
	SELECT 
		first(code_reg),
		first(nom_reg),
		SUM(superficie),
		SUM(population),
		ST_Multi(ST_Union(geometry))
	FROM geofla.departement
	GROUP BY code_reg, nom_reg
;

