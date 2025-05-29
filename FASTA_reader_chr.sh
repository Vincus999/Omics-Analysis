#!/bin/bash

#This script is going to count the number of the chromosomes in the reference genome and prints it on the screen
input_fa=${1}


zcat $[input_fa} | grep -E -c "^>(chr[0-9XY]+)"


#Exiting
exit
