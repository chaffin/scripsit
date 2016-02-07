#!/bin/bash
#
dir='docs/json'
prefinal='pre.tmp'
final='../js/ssp.js'
cd $dir
for i in *.json;do
tail -n +2 $i > $i.tmp;done
for j in *.tmp;do
head -n -2 $j > $j.temp;done
echo "var ssp = {" > $prefinal  
for k in *.temp;do
cat $k >> $prefinal
echo "}," >> $prefinal;done
head -n -1 $prefinal > $final
echo "}" >> $final
rm *.temp
rm *.tmp
