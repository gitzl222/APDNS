sample=$1
input_dir=$2
ref=/refseq/
num_threads=16

blastn -query ${input_dir}/trimed/${sample}/${sample}_nohuman.fasta -db ${ref} -outfmt 6 -out ${input_dir}/trimed/${sample}/${sample}.blast.txt -evalue 1e-5 -task megablast -num_threads ${num_threads}
