#!/bin/sh

echo "# code_postaux..."

export URL=https://www.data.gouv.fr/s/resources/base-officielle-des-codes-postaux/20151009-153255/base_officielle_codes_postaux_-_09102015.csv

if [ ! -e codes_postaux.csv ];
then
    wget -O codes_postaux.csv "$URL" 
fi

iconv -f LATIN1 -t UTF8 codes_postaux.csv > codes_postaux_utf8.csv
sed -i "1s/.*/code_insee;nom_commune;code_postal;libelle_acheminement/" codes_postaux_utf8.csv

psql -d apicarto -f import.sql
