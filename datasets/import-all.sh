#!/bin/sh

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


