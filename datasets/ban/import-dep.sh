#!/bin/sh

INSEE_DEP=$1

echo "-- Import bano département $INSEE_DEP..."

FILENAME=data/ban-$INSEE_DEP.shp.zip
URL=http://bano.openstreetmap.fr/BAN_odbl/BAN_odbl_$INSEE_DEP-shp.zip

wget -nc -O $FILENAME $URL

unzip -d data -o $FILENAME
shp2pgsql -a -s 4326 -g geometry data/BAN_odbl_$INSEE_DEP.shp ban.adresse > data/adresse-$INSEE_DEP.sql
psql --quiet -d apicarto -f data/adresse-$INSEE_DEP.sql
