require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1]
output = args[2]

files<-list.files(input,full.names=TRUE,pattern="_Grn")

targets <- read.metharray(files)

save(targets, file = output)
