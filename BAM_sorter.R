library("Rsamtools") 

# I used Rsamtools' sortBam function in a for loop. The samples object is defined in the subjunc_mapper.R script
for (s in samples) { 
  sorted_bam <- paste0("/home/user/project/0030_mapping/",  
s, "_mapped_sorted_reads") 
   
  sortBam(file = paste0("/home/user/project/0030_mapping/",  
s, "_mapped.bam"), 
          destination = sorted_bam) 
   
  indexBam(paste0(sorted_bam, ".bam")) 
} 
