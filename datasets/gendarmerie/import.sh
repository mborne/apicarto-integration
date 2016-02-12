#!/bin/sh

URL=https://www.data.gouv.fr/s/resources/liste-des-points-d-accueil-de-la-gendarmerie-nationale-avec-geolocalisation/community/20150706-094907/ETALABexport_gn.csv

if [ ! -e gendarmerie.csv ];
then
    wget -O gendarmerie.csv $URL
fi

psql -d apicarto -f import.sql

