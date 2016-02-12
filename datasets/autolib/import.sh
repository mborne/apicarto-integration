#!/bin/sh

URL=http://data.iledefrance.fr/explore/dataset/stations_et_espaces_autolib/download?format=shp

if [ ! -e autolib.zip ];
then
    wget -O autolib.zip "$URL"
fi

unzip -o autolib.zip

shp2pgsql -c -d \
    -s 4326 \
    -g geometry \
    stations_et_espaces_autolib.shp autolib > autolib.sql

psql --quiet -d apicarto -f autolib.sql

rm autolib.sql
rm stations_et_espaces_autolib.*
