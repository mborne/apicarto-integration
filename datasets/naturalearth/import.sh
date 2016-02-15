#!/bin/sh

URL=http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_countries.zip

wget -nc -O data/countries.zip $URL
unzip -o -d data data/countries.zip

psql -d apicarto -f schema.sql

shp2pgsql -a -s 4326 data/ne_10m_admin_0_countries.shp naturalearth.country > data/country.sql
psql --quiet -d apicarto -f data/country.sql

