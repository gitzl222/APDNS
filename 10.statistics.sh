#!/bin/bash
sample=$1
input_dir=$2
dierctory=${input_dir}/trimed/${sample}
#dierctory=${input_dir}
file=${dierctory}/${sample}.statistic.csv
if test -f "$file"; then
    rm -rf $file
fi
echo "name"','"reads_num"','"RPM"','"% of microbe" > $file

for i in `awk '{print $1":"$2"-"$3}' ${dierctory}/${sample}.output`
do
    s=`seqkit stat ${dierctory}/${sample}.trimed.fastq | sed -n "2p" |awk '{print $4}' | sed 's/,//g'`
    ios=${i#*-}
    reads=${i%:*}
    right=${i#*:}
    left=${right%-*}
    sum=`cat ${dierctory}/${sample}.output | awk -FS '{sum+=$1} END {print sum}'`
    sand_sum=`echo "$reads $sum" | awk '{printf "%.5f%%\n", $1/$2*100}'`
    microbe=`echo "$reads $s" | awk '{printf "%.5f%%\n", $1/$2*100}'`
    echo $left' '$ios','$reads','$microbe','$sand_sum >> ${dierctory}/${sample}.statistic.csv
done
