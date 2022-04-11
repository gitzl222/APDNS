#! /bin/bash/
sample=$1
input_dir=$2
num_threads=16
ref=/media/bacteria/B6260EBD260E7F1D/nanopore/db/human_bwa/GCF_000001405.39_GRCh38.p13_genomic.fna

bwa mem -t ${num_threads} ${ref} ${input_dir}/trimed/${sample}/${sample}.trimed.fastq > ${input_dir}/trimed/${sample}/${sample}.bwa.sam
