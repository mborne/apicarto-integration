
\copy cog.commune FROM 'commune_utf8.txt' with (format csv, delimiter E'\t', header) ;
\copy cog.departement FROM 'departement_utf8.txt' with (format csv, delimiter E'\t', header) ;
\copy cog.region FROM 'region_utf8.txt' with (format csv, delimiter E'\t', header) ;

