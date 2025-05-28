#!/bin/bash

# Performs a quality control of each compressed FASTQ files and generates the report HTML files in an output folder
mkdir /home/user/project/0010_fastqc 
fastqc -o /home/user/project/0010_fastqc/ /home/user/project/0000_fastq/*.fastq.gz 

# Exit
exit
