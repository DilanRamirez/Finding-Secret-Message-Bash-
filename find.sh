#!/bin/bash

# finding code number.
# To find the the cities without direct flights,
# I use a for loop to go through the whole file
# and find all the cities which only appears once 
# in the second filed.

#create a new file with all the destination cities.
awk '{print $2}' elPasoRatings.txt > noDestination.txt 
awk '{print $2 " " $7 " " $9}' elPasoRatings.txt > citiesCodes.txt

grep -f elPasoFlights.txt citiesCodes.txt > codeNumbers.txt
grep -f elPasoFlights.txt noDestination.txt > codeNumbers2.txt

#Go through the destination cities and find the cities wich only appers once.
(sort codeNumbers.txt | uniq -u) > cities.txt
(sort codeNumbers2.txt | uniq -u) > cities2.txt

grep -f cities2.txt cities.txt | sort -V -k 2 > codeFinal.txt

awk '{print $2 " " $3}' codeFinal.txt > codeFinal2.txt

#sort -n codeNumbers.txt

awk '{printf "%0.1f\t%s\n", ($7 * $8),$9}' elPasoRatings.txt > columns7_8.txt

awk 'BEGIN {FS="."}{print $2}' columns7_8.txt > wrongCities.txt

awk '{if($1 > 000 && $1 < 9000) print $1 " " $2}' wrongCities.txt |sort -V -k 1 > codebook2.txt

awk '{print $2}' codebook2.txt > temp.txt


grep -f temp.txt elPasoRatings.txt | sort -V -k 7 > codebook3.txt

awk '{print $7}' codebook3.txt > temp.txt

grep -f temp.txt codeFinal2.txt > final.txt


awk '{print $1}' final.txt  > temp2.txt

awk '{print $7 " " $9}' codebook3.txt  > temp3.txt

grep -f temp2.txt temp3.txt > final.txt
awk '{print $2}' final.txt | cut -c2



