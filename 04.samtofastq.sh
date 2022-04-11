sample=$1
input_dir=$2

samtools fastq -n -f 4 ${input_dir}/trimed/${sample}/${sample}.bwa.sam > ${input_dir}/trimed/${sample}/${sample}_nohuman.fastq
