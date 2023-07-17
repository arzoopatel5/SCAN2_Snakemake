library(scan2)
library(argparse)

# add arguements
parser <- ArgumentParser()
parser$add_argument("-i", "--input", help="scan2 rda file")
parser$add_argument("-o", "--output", help="tsv file")
args <- parser$parse_args()

# load in scan2 object and save it to tsv
load(args$input)
table <- results@gatk[pass == TRUE]
dir.create(dirname(args$output))
write.table(table,file=args$output,sep='\t',quote=FALSE)
