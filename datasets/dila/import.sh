#!/bin/sh

DILA_URL=http://lecomarquage.service-public.fr/donnees_locales_v2/all_latest.tar.bz2

echo "dila - téléchargement de $DILA_URL..."
wget -nc -O all_latest.tar.bz2 $DILA_URL

echo "dila - extraction de l'archive..."
rm all_*/ -rf
tar -xf all_latest.tar.bz2
rm all_lastest 2> /dev/null
mv all_*/ all_latest

# convert to csv
echo "dila - conversion en CSV..."
java -cp bin/dila-0.0.1-SNAPSHOT.jar io.github.mborne.dila.cli.ConvertToCSV -input all_latest -output organisme.csv

# import
echo "dila - import en base de données..."
psql -d apicarto -f schema.sql
psql -d apicarto -f import.sql



