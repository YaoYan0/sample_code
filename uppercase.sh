#!/bin/bash

for i in *txt; 
do 
    nf=`echo $i | sed s/.txt/-up.txt/`; 
    tr 'a-z' 'A-Z' < $i > $nf; 
done
