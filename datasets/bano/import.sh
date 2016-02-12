#!/bin/bash

psql -d apicarto -f schema.sql

for i in $(seq 1 9); 
do
    sh import-dep.sh "0$i"
done

for i in $(seq 10 95); 
do
    sh import-dep.sh "$i"
done

sh import-dep.sh 971
sh import-dep.sh 972
sh import-dep.sh 973
sh import-dep.sh 974
sh import-dep.sh 976

sh import-dep.sh 2A
sh import-dep.sh 2B
