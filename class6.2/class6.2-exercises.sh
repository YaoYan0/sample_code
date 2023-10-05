#!/bin/bash


# Practice #1: Go through the file allstar.txt, and whenever 
# a line contains the string "you" or "You" more than once, print 
# "Double U!" and the line.

cat allstar.txt | while read i; 
do 
    countyou=`echo $i | grep -Eic "you.*you"`; 
    if [ $countyou -gt 0 ]; 
    then 
	echo "DOUBLE U $i";
    fi;
done

# Pactice #2: Print out the number of words in each line of fastcar.txt 
# then sort those numbers to see how long the longest line is.
cat fastcar.txt | while read i; do
    wordcount=`echo $i | wc -w`
    echo $wordcount
done | sort -n



# Practice #2 Fancy: Print out the lines witt more than 10 words,
# then remove duplicates, and then sort by the number of words.
cat fastcar.txt | while read i; do
    wordcount=`echo $i | wc -w`
    if [ $wordcount -gt 10 ]; then
	echo $wordcount $i
    fi
done | sort -u | sort -n



# Practice #3: For each .txt file, delete all commas, and write 
# the file out to a new file ending in -NOCOMMAS.txt
for i in *txt; do
    newi=`echo $i | sed s/.txt/-NOCOMMAS.txt/`;
    echo $newi;
    sed 's/,//g' $i > $newi
done
