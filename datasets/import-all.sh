#!/bin/sh

echo "-- import des données..."
for i in $(ls);
do
    if [ -e $i/import.sh ];
    then
        echo "-- $i..."
        cd $i
        sh import.sh
        cd ..
    fi
done


echo "-- post-traitement (données inter-dépendante)..."
for i in $(ls);
do
    if [ -e $i/postprocess.sh ];
    then
        echo "-- $i..."
        cd $i
        sh postprocess.sh
        cd ..
    fi
done
