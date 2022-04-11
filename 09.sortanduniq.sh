sample=$1
input_dir=$2

cut -f2 ${input_dir}/trimed/${sample}/${sample}.result.txt |sort > ${input_dir}/trimed/${sample}/${sample}.final.txt

cut -f1,2 -d ' ' ${input_dir}/trimed/${sample}/${sample}.final.txt |sort |uniq -c|sort -k 1 -n -r > ${input_dir}/trimed/${sample}/${sample}.output
