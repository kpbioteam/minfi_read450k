require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input1 = args[1]
input2 = args[2]
output = args[3]

files <- as.list(input1,input2)
RGSet <- read.metharray(files)

save(RGSet, file = output)
