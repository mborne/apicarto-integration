#!/bin/sh

URL=https://www.data.gouv.fr/s/resources/base-permanente-des-equipements-1/20150914-184017/bpe.zip

if [ ! -e bpe.zip ];
then
    wget -O bpe.zip $URL
fi

unzip -o bpe.zip

psql -d apicarto -f import.sql
