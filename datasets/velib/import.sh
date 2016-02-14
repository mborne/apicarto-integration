#!/bin/sh

URL=http://data.iledefrance.fr/explore/dataset/velib_a_paris_et_communes_limitrophes/download?format=shp

if [ ! -e velib.zip ];
then
    wget -O velib.zip "$URL"
fi

unzip -o velib.zip
shp2pgsql -a -s 4326 -g geometry velib_a_paris_et_communes_limitrophes.shp velib.station > station.sql

psql --quiet -d apicarto -f schema.sql
psql --quiet -d apicarto -f station.sql


