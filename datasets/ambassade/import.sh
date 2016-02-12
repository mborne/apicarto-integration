#!/bin/sh

URL=https://www.data.gouv.fr/storage/f/2014-04-03T16-37-47/geolocalisation-ambassades-de-france.csv

if [ ! -e ambassades.csv ];
then
    wget -O ambassades.csv $URL
fi

psql -d apicarto -f schema.sql
psql -d apicarto -f import.sql

