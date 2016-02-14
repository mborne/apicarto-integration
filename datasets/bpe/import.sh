#!/bin/sh

URL=https://www.data.gouv.fr/s/resources/base-permanente-des-equipements-1/20150914-184017/bpe.zip

wget -nc -O bpe.zip $URL
unzip -o bpe.zip

psql -d apicarto -f schema.sql
psql -d apicarto -f import.sql
