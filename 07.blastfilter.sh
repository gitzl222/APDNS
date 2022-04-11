sample=$1
input_dir=$2

python /blast.filter.py ${input_dir}/trimed/${sample}/${sample}.blast.txt /refseq/species.name.txt ${input_dir}/trimed/${sample}/${sample}_py.blast.txt
