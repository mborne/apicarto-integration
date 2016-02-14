#!/bin/sh

echo "# irve..."

export URL=https://www.data.gouv.fr/s/resources/fichier-consolide-des-bornes-de-recharge-pour-vehicules-electriques-irve/20151008-182813/IRVE-201510.csv

wget -nc -O irve.csv "$URL"

psql -d apicarto -f schema.sql
psql -d apicarto -f import.sql
