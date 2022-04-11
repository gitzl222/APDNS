# APDNS(Automatic pathogen diagnosis by nanopore sequencing)
* Usage:\
APDNS.sh -n barcode01 -i /input/ -s /APDNS/ -b SQK-PBK004\
*-n is the barcode ID.\
*-i is the input files. (.fastq.gz)\
*-s is the scripts pathway.\
*-b is the library preparation kit ID.
* Results description:\
*barcode01_nohuman.fastq: All reads of nonhuman species.\
*barcode01.output: Containing two columns of data, the first column is reads number of each species, the second column is species names.\
*barcode01.statistic.csv: Containing four columns (species name, read_num, RPM, % of microbe).\
read_num means reads number of each species.\
RPM means proportion of species reads in the total reads.\
% of microbe means proportion of species reads in the microbial reads.
