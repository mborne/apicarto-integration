DROP TABLE IF EXISTS ambassade ;
CREATE TABLE ambassade (
    id serial primary key,
    libelle text,
    pays text,
    geometry geometry(Point,4326)
) ;
