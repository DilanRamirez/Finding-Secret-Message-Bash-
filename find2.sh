#!/bin/bash

# finding code number.
# To find the the cities without direct flights,
# I use a for loop to go through the whole file
# and find all the cities which only appears once 
# in the second filed.

#create a new file with all the destination cities.
awk '{print $2}' elPasoRatings.txt > noDestination.txt 
awk '{print $2 " " $7 " " $9}' elPasoRatings.txt > citiesCodes.txt

#Go through the destination cities and find the cities wich only appers once.
(sort noDestination.txt | uniq -u) > cities.txt

#find the cities that are not repeated and appende them to another document
grep -f cities.txt citiesCodes.txt > codeNumbers.txt

#Sort cities 
#sort -n codeNumbers.txt

awk '{printf "%0.1f\t%s\n", ($7 * $8),$9}' elPasoRatings.txt > columns7_8.txt

awk 'BEGIN {FS="."}{print $2}' columns7_8.txt > wrongCities.txt

awk '{if($1 > 000 && $1 < 9000) print $1 " " $2}' wrongCities.txt > codebook.txt


#sort -c wrongCities.txt

#awk '{print $0}' result.txt
#awk '{printf "%0.1f\t%s\n", $0, $1}' result.txt > compare.txt
#awk '{}'
#awk '{if(($0 + $0){print


