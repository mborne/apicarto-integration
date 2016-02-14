#!/bin/sh

#WGS84   UTM 20N 	4559 	Système utilisé en Guadeloupe & Martinique
#RGR92   UTM 40S 	2975 	Système utilisé à la Réunion
#RGFG95  UTM 22N 	2972 	Système utilisé en Guyane
#RGM04   UTM 38S 	4471 	Système utilisé à Mayotte
#RGSPM06 UTM 21N 	4467 	Système utilisé à St-Pierre-et-Miquelon

URL="https://wxs-telechargement.ign.fr/1yhlj2ehpqf3q6dt6a2y7b64/telechargement/inspire/CONTOURS-IRIS-FRANCE-2014-01-01\$CONTOURS-IRIS_2-0__SHP_LAMB93_FXX_2014-01-01/file/CONTOURS-IRIS_2-0__SHP_LAMB93_FXX_2014-01-01.7z"

wget -nc -O iris_shp.7z $URL
7z e iris_shp.7z -y -oiris_shp

psql -d apicarto -f schema.sql

#iris_shp/CONTOURS-IRIS_FE.shp
shp2pgsql -a -s 2154:4326 -g geometry -W LATIN1 iris_shp/CONTOURS-IRIS_FE.shp iris.contour > contour.sql
psql --quiet -d apicarto -f contour.sql

#iris_shp/CONTOURS-IRIS_R01.shp (971 Guadeloupe)
shp2pgsql -a -s 4559:4326 -g geometry -W LATIN1 iris_shp/CONTOURS-IRIS_R01.shp iris.contour > contour.sql
psql --quiet -d apicarto -f contour.sql

#iris_shp/CONTOURS-IRIS_R02.shp (972 Martinique)
shp2pgsql -a -s 4559:4326 -g geometry -W LATIN1 iris_shp/CONTOURS-IRIS_R02.shp iris.contour > contour.sql
psql --quiet -d apicarto -f contour.sql

#iris_shp/CONTOURS-IRIS_R03.shp (973 Guyane)
shp2pgsql -a -s 2972:4326 -g geometry -W LATIN1 iris_shp/CONTOURS-IRIS_R03.shp iris.contour > contour.sql
psql --quiet -d apicarto -f contour.sql

#iris_shp/CONTOURS-IRIS_R04.shp (974 Réunion)
shp2pgsql -a -s 2975:4326 -g geometry -W LATIN1 iris_shp/CONTOURS-IRIS_R04.shp iris.contour > contour.sql
psql --quiet -d apicarto -f contour.sql


