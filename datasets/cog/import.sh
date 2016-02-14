#!/bin/sh

URL_COMMUNE="http://www.insee.fr/fr/methodes/nomenclatures/cog/telechargement/2015/txt/france2015.zip"
URL_DEPARTEMENT="http://www.insee.fr/fr/methodes/nomenclatures/cog/telechargement/2015/txt/depts2015.txt"
URL_REGION="http://www.insee.fr/fr/methodes/nomenclatures/cog/telechargement/2015/txt/reg2015.txt"

psql -d apicarto -f schema.sql

echo "cog - préparation de l'import de l'historique des communes..."
wget -nc -O france.zip $URL_COMMUNE
unzip -o france.zip
iconv -f LATIN1 -t UTF8 france2015.txt > commune_utf8.txt 

echo "cog - préparation de l'import des départements..."
wget -nc -O departement.txt $URL_DEPARTEMENT
iconv -f LATIN1 -t UTF8 departement.txt > departement_utf8.txt 

echo "cog - préparation de l'import des régions..."
wget -nc -O region.txt $URL_REGION
iconv -f LATIN1 -t UTF8 region.txt > region_utf8.txt 

echo "cog - import des communes, département et région"
psql -d apicarto -f import.sql
