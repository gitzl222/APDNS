sample=$1
input_dir=$2

cat ${input_dir}/trimed/${sample}/*.fastq > ${input_dir}/trimed/${sample}/${sample}.trimed.fastq
