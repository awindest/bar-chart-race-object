#!/bin/bash
# a simple script to re-map values from two files and output a third file
#
if [ -z "$1" ]
    then
    echo "enter first map file, second map file and the input file"
    echo "Usage: ./map.sh fileA fileB brand_values.csv"
    exit 1
fi
paste $1 $2 | while read a b; do sed "s/$a/$b/g" $3; done

