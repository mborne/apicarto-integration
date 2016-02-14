#!/bin/sh

#WGS84   UTM 20N 	4559 	Système utilisé en Guadeloupe & Martinique
#RGR92   UTM 40S 	2975 	Système utilisé à la Réunion
#RGFG95  UTM 22N 	2972 	Système utilisé en Guyane
#RGM04   UTM 38S 	4471 	Système utilisé à Mayotte
#RGSPM06 UTM 21N 	4467 	Système utilisé à St-Pierre-et-Miquelon

# schéma

psql --quiet -d apicarto -f schema.sql

# métropole

URL_FXX="https://wxs-telechargement.ign.fr/oikr5jryiph0iwhw36053ptm/telechargement/inspire/GEOFLA_THEME-COMMUNE_2015_2\$GEOFLA_2-1_COMMUNE_SHP_LAMB93_FXX_2015-12-01/file/GEOFLA_2-1_COMMUNE_SHP_LAMB93_FXX_2015-12-01.7z"

if [ ! -e geofla-fxx-lamb93.7z ];
then
    wget -O geofla-fxx-lamb93.7z "$URL_FXX"
fi

7z e geofla-fxx-lamb93.7z -y -ogeofla-fxx-lamb93
shp2pgsql -a -s 2154:4326 -g geometry -W LATIN1 geofla-fxx-lamb93/COMMUNE.shp geofla.commune > commune.sql
psql --quiet -d apicarto -f commune.sql

# guadeloupe

URL_GUA="https://wxs-telechargement.ign.fr/oikr5jryiph0iwhw36053ptm/telechargement/inspire/GEOFLA_THEME-COMMUNE_2015_2\$GEOFLA_2-1_COMMUNE_SHP_UTM20W84GUAD_D971_2015-12-01/file/GEOFLA_2-1_COMMUNE_SHP_UTM20W84GUAD_D971_2015-12-01.7z"

if [ ! -e geofla-gua.7z ];
then
    wget -O geofla-gua.7z "$URL_GUA"
fi

7z e geofla-gua.7z -y -ogeofla-gua
shp2pgsql -a -s 4559:4326 -g geometry -W LATIN1 geofla-gua/COMMUNE.shp geofla.commune > commune.sql
psql --quiet -d apicarto -f commune.sql

# Martinique

URL_MAR="https://wxs-telechargement.ign.fr/oikr5jryiph0iwhw36053ptm/telechargement/inspire/GEOFLA_THEME-COMMUNE_2015_2\$GEOFLA_2-1_COMMUNE_SHP_UTM20W84MART_D972_2015-12-01/file/GEOFLA_2-1_COMMUNE_SHP_UTM20W84MART_D972_2015-12-01.7z"

if [ ! -e geofla-mar.7z ];
then
    wget -O geofla-mar.7z "$URL_MAR"
fi

7z e geofla-mar.7z -y -ogeofla-mar
shp2pgsql -a -s 4559:4326 -g geometry -W LATIN1 geofla-mar/COMMUNE.shp geofla.commune > commune.sql
psql --quiet -d apicarto -f commune.sql

# Réunion

URL_REU="https://wxs-telechargement.ign.fr/oikr5jryiph0iwhw36053ptm/telechargement/inspire/GEOFLA_THEME-COMMUNE_2015_2\$GEOFLA_2-1_COMMUNE_SHP_RGR92UTM40S_D974_2015-12-01/file/GEOFLA_2-1_COMMUNE_SHP_RGR92UTM40S_D974_2015-12-01.7z"

if [ ! -e geofla-reu.7z ];
then
    wget -O geofla-reu.7z "$URL_REU"
fi

7z e geofla-reu.7z -y -ogeofla-reu
shp2pgsql -a -s 2975:4326 -g geometry -W LATIN1 geofla-reu/COMMUNE.shp geofla.commune > commune.sql
psql --quiet -d apicarto -f commune.sql

# Mayotte

URL_MAY="https://wxs-telechargement.ign.fr/oikr5jryiph0iwhw36053ptm/telechargement/inspire/GEOFLA_THEME-COMMUNE_2015_2\$GEOFLA_2-1_COMMUNE_SHP_RGM04UTM38S_D976_2015-12-01/file/GEOFLA_2-1_COMMUNE_SHP_RGM04UTM38S_D976_2015-12-01.7z"

if [ ! -e geofla-may.7z ];
then
    wget -O geofla-may.7z "$URL_MAY"
fi

7z e geofla-may.7z -y -ogeofla-may
shp2pgsql -a -s 4471:4326 -g geometry -W LATIN1 geofla-may/COMMUNE.shp geofla.commune > commune.sql
psql --quiet -d apicarto -f commune.sql

# Guyane
URL_GUY="https://wxs-telechargement.ign.fr/oikr5jryiph0iwhw36053ptm/telechargement/inspire/GEOFLA_THEME-COMMUNE_2015_2\$GEOFLA_2-1_COMMUNE_SHP_UTM22RGFG95_D973_2015-12-01/file/GEOFLA_2-1_COMMUNE_SHP_UTM22RGFG95_D973_2015-12-01.7z"

if [ ! -e geofla-guy.7z ];
then
    wget -O geofla-guy.7z "$URL_GUY"
fi

7z e geofla-guy.7z -y -ogeofla-guy
shp2pgsql -a -s 2972:4326 -g geometry -W LATIN1 geofla-guy/COMMUNE.shp geofla.commune > commune.sql
psql --quiet -d apicarto -f commune.sql


# post-traitement...
psql --quiet -d apicarto -f postprocess.sql


