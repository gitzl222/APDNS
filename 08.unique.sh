sample=$1
input_dir=$2

python /step2.py ${input_dir}/trimed/${sample}/${sample}_nohuman.fasta ${input_dir}/trimed/${sample}/${sample}_py.blast.txt ${input_dir}/trimed/${sample}/${sample}.result.txt 0.8
