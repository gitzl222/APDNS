sample=$1
input_dir=$2

python /media/bacteria/B6260EBD260E7F1D/nanopore/db/python/blast.filter.py ${input_dir}/trimed/${sample}/${sample}.blast.txt /media/bacteria/B6260EBD260E7F1D/nanopore/db/refseq_all2/all.name.txt ${input_dir}/trimed/${sample}/${sample}_py.blast.txt
