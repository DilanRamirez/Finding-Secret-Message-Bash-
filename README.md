# Finding-Secret-Message-Bash

## Description
I neede to find a secret message buried in an innocent-looking list of passengers rating information. Fortunately i know how to extract it since I have intercepted an email with the following instructions: 

To get the secret message, first extract the code numbers and the Codebook. To get the **code numbers**, find all lines which have a city with no direct flights. It will always be in the second ed. I'm sending listings of all direct flight cities for Santa Fe, for the text message, and for El Paso, for the real message. For each such lines, just pull out the code number, which is the 7th field. for the sample file, these are marked with asteriscs, so the code numbers would be 34, 33, 110, and 1. Now sort them in ascending order to get 1, 33, 34, 110. Now for the **codebook.** It is hidden in all lines for which the rating (column makes no sense, given the number of raters (column 7). Las clasificaciones son números enteros de el producto de la clasificación y el numero de evaluadores no es un numero entero (dentro del error de redondeo), entonces la linea es una linea que contribuye al libro de códigos. En la muestra, estas Ilheus están marcadas con H. El 1ro de códigos asigns nimetas letras, and build the codebook from these lines by taking the 7th column and the rep's second initial from the 8th column. 0 a 5, por lo que s1 For the

Files (all at the course homepage) 
  * Sample: santaFeRatings.txt
  * Message-containing: elPasoRatings.txt
  * Other useful files: santaFeFlights.txt, elPaso Flights but airporades
  
## Author
Dilan R. Ramirez
