URL="https://www.data.gouv.fr/s/resources/donnees-sur-les-installations-radioelectriques-de-plus-de-5-watts-1/20160204-144855/20160130_DATA.zip"

wget -nc -O data/anfr.zip $URL
unzip -d data -o data/anfr.zip

psql -d apicarto -f schema.sql

#fix CNPE de Dampierre en burly;route de gien
sed -i 's/burly;route de gien/burly,route de gien/g' data/SUP_SUPPORT.txt
#fix CNPE PALUEL PAP;LA CNTRALE DE PALUEL
sed -i 's/CNPE PALUEL PAP;LA CNTRALE DE PALUEL/CNPE PALUEL PAP,LA CNTRALE DE PALUEL/g' data/SUP_SUPPORT.txt


# LATIN1 => UTF8
for i in SUP_ANTENNE SUP_BANDE  SUP_EMETTEUR  SUP_STATION  SUP_SUPPORT;
do
    iconv -f LATIN1 -t UTF8 data/$i.txt > data/"$i"_utf8.txt
done

psql -d apicarto -f import.sql
