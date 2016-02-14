#!/bin/sh

URL=http://data.iledefrance.fr/explore/dataset/stations_et_espaces_autolib/download?format=shp

if [ ! -e autolib.zip ];
then
    wget -O autolib.zip "$URL"
fi

unzip -o autolib.zip

shp2pgsql -a -s 4326 -g geometry stations_et_espaces_autolib.shp autolib.station > station.sql

psql --quiet -d apicarto -f schema.sql
psql --quiet -d apicarto -f station.sql

