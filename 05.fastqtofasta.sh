sample=$1
input_dir=$2

seqkit fq2fa ${input_dir}/trimed/${sample}/${sample}_nohuman.fastq > ${input_dir}/trimed/${sample}/${sample}_nohuman.fasta
