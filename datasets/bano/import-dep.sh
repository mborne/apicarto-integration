#!/bin/sh

INSEE_DEP=$1

FILENAME=data/bano-$INSEE_DEP.csv
URL=http://bano.openstreetmap.fr/data/bano-$INSEE_DEP.csv

if [ ! -e $FILENAME ];
then
    wget -O $FILENAME $URL
fi

sed 's/\[INSEE_DEP\]/'$INSEE_DEP'/g' import-dep.sql.in > data/import-$INSEE_DEP.sql
psql -d apicarto -f data/import-$INSEE_DEP.sql





