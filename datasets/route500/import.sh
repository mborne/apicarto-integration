
URL="https://wxs-telechargement.ign.fr/pfinqfa9win76fllnimpfmbi/telechargement/inspire/ROUTE500-France-2015\$ROUTE500_2-0__SHP_LAMB93_FXX_2015-08-01/file/ROUTE500_2-0__SHP_LAMB93_FXX_2015-08-01.7z"

wget -nc -O data/route500.7z $URL

7z e data/route500.7z -y -odata

psql -d apicarto -f schema.sql

# -- réseau routier ------------------------

#data/TRONCON_ROUTE.shp
shp2pgsql -d -s 2154:4326 -g geometry -W LATIN1 data/TRONCON_ROUTE.shp route500.troncon_route > data/troncon_route.sql
psql --quiet -d apicarto -f data/troncon_route.sql

#data/NOEUD_ROUTIER.shp
shp2pgsql -d -s 2154:4326 -g geometry -W LATIN1 data/NOEUD_ROUTIER.shp route500.noeud_routier > data/noeud_routier.sql
psql --quiet -d apicarto -f data/noeud_routier.sql

#data/COMMUNICATION_RESTREINTE.shp
shp2pgsql -d -s 2154:4326 -g geometry -W LATIN1 data/COMMUNICATION_RESTREINTE.shp route500.communication_restreinte > data/communication_restreinte.sql
psql --quiet -d apicarto -f data/communication_restreinte.sql

# -- réseau ferré ------------------------

#data/TRONCON_VOIE_FERREE.shp
shp2pgsql -d -s 2154:4326 -g geometry -W LATIN1 data/TRONCON_VOIE_FERREE.shp route500.troncon_voie_ferree > data/troncon_voie_ferree.sql
psql --quiet -d apicarto -f data/troncon_voie_ferree.sql

#data/NOEUD_FERRE.shp
shp2pgsql -d -s 2154:4326 -g geometry -W LATIN1 data/NOEUD_FERRE.shp route500.noeud_ferre > data/noeud_ferre.sql
psql --quiet -d apicarto -f data/noeud_ferre.sql

# -- réseau hydro ------------------------

#data/TRONCON_HYDROGRAPHIQUE.shp
shp2pgsql -d -s 2154:4326 -g geometry -W LATIN1 data/TRONCON_HYDROGRAPHIQUE.shp route500.troncon_hydrographique > data/troncon_hydrographique.sql
psql --quiet -d apicarto -f data/troncon_hydrographique.sql


# -- autre ------------------------

#data/AERODROME.shp
shp2pgsql -a -s 2154:4326 -g geometry -W LATIN1 data/AERODROME.shp route500.aerodrome > data/aerodrome.sql
psql --quiet -d apicarto -f data/aerodrome.sql

#data/COMMUNE.shp
#data/NOEUD_COMMUNE.shp
#data/LIMITE_ADMINISTRATIVE.shp

#data/COTE_FRONTIERE.shp
#data/ZONE_OCCUPATION_SOL.shp

