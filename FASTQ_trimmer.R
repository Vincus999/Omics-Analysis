library(ShortRead)

dir.create("/home/user/project/0020_trimming") 
samples <- c("normoxia_vec1", "normoxia_vec2", 
             "normoxia_OC2_1", "normoxia_OC2_2", 
             "hypoxia_vec3", "hypoxia_vec4", 
             "hypoxia_OC2_3", "hypoxia_OC2_4") 
for (s in samples) { 
  fq_obj <- get(paste0("fq_", s, "_trimmed")) 
  writeFastq(fq_obj,  
             paste0("/home/user/project/0020_trimming/fq_", s, 
"_trimmed.fastq"),  
             compress = FALSE) 
}
