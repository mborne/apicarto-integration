#!/bin/sh

echo "# irve..."

export URL=https://www.data.gouv.fr/s/resources/fichier-consolide-des-bornes-de-recharge-pour-vehicules-electriques-irve/20151008-182813/IRVE-201510.csv

if [ ! -e irve.csv ];
then
    wget -O irve.csv "$URL"
fi

ogr2ogr -overwrite -f PostgreSQL PG:dbname=apicarto irve.vrt

