#!/bin/bash

### VARIABLES

# No spaces next to the equals sign. Ever.
mycat="Timo"
myothercat=`echo $mycat | sed s/imo/alia/`

echo $mycat
echo $myothercat 

# Good variable names!
dog="Laika"
cat3="Yodi"
the_gerbil="Nancy"

# Bad variable names!
#d@g="Laika"
#cat="Yodi"
#the-gerbil="Nancy"
#3for="all mankind"

# See what would happen if you accidentally
# turned a command into a variable.
cat allstar.txt

echo

### FOR LOOPS

# Looping through a range of numbers
for i in {1..10}
do
    echo $i;
done

echo

# Looping through the txt files in your current directory.
for i in *txt; 
do
    echo $i;
done

echo

# Looping through a list of strings you create with sed.
for i in `ls *.txt | sed s/txt/csv/`; 
do 
    echo $i; 
    touch $i; 
done

echo

# Looping through a list of things you provide.
for i in Emily Marc Beatrix Talia Timo; 
do
    echo "$i is sleepy!"
done


### WHILE READ LOOPS

# Lets you go through a file line by line
# I use it by piping the output of cat.
# There are other ways using <

cat allstar.txt | while read i; do
    echo `echo $i | sed s/star/MOOOOOOOOON/g`;
done


### IF STATEMENTS

# You must have a space after [ and before ]
# Don't forget that then starts the code and fi ends the code.
# Just like curly braces in Java or like : newline indent in Python.

for i in *.txt; 
do 
    if [ `grep -c "hey" $i` -gt 0 ]; 
    then 
	echo $i;
    fi
done


for i in *.txt; 
do 
    counting=`grep -c "hey" $i`
    if [ $counting -gt 0 ];
    then
	echo $i
    fi
done

### WHILE READ

