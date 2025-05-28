library(Rsubreads)

dir.create("${WORKDIR}/0022_mapping") 
samples <- list( 
  normoxia_vec = c("fq_normoxia_vec1_trimmed.fastq", 
"fq_normoxia_vec2_trimmed.fastq"), 
  normoxia_OC2 = c("fq_normoxia_OC2_1_trimmed.fastq", 
"fq_normoxia_OC2_2_trimmed.fastq"), 
  hypoxia_vec  = c("fq_hypoxia_vec3_trimmed.fastq", 
"fq_hypoxia_vec4_trimmed.fastq"), 
  hypoxia_OC2  = c("fq_hypoxia_OC2_3_trimmed.fastq", 
"fq_hypoxia_OC2_4_trimmed.fastq") 
) 
 
for (name in names(samples)) { 
  fastqs <- samples[[name]] 
   
  subjunc( 
    index = "${WORKDIR}/0021_RefGenome/Homo_sapiens_index", 
    readfile1 = paste0("${WORKDIR}/0011_trimming/", fastqs[1]), 
    readfile2 = paste0("${WORKDIR}/0011_trimming/", fastqs[2]), 
    input_format = "FASTQ", 
    output_format = "BAM", 
    output_file = paste0("${WORKDIR}/0022_mapping/", name, 
"_mapped_reads.bam"), 
    nthreads = 4, 
    phredOffset = 33, 
    unique = TRUE, 
    minFragLength = 50, 
    maxFragLength = 10000, 
    PE_orientation = "fr" 
  ) 
} 
