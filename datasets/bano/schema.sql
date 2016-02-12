DROP TABLE IF EXISTS bano ;
 
CREATE TABLE bano (
    fid serial primary key,
    id text,
    numero text,
    voie text,
    code_post text,
    nom_comm text,
    source text,
    geometry geometry(Point,4326)
) ;

