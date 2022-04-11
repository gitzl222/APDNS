#!/bin/bash
start=`date +%s`

################################################
## Parameter parsing + variables
################################################
usage()
{
	cat << EOF
Usage: $0 options

OPTIONS:
   -h      Show this message
   -n 	   the name of trimed.fastq	
   -i      the directory of fastq
   -s	   the directory of scripts
   -b      barcode_kits

EXAMPLES:
Process a FastQ directory:
    $0 -n barcode01 -i fastq_directory/ -s scripts_directory/ -b barcode_kits 

EOF
}

while getopts "h:n:i:s:b:" OPTION
do
	case ${OPTION} in
		-h)
			usage
			exit 1
		;;
		n)
			sample="$OPTARG"
		;;
		i)
			inputdir="$OPTARG"
		;;
		s)
			scriptsdir="$OPTARG"
		;;
		b)
			barcode_kits="$OPTARG"
		;;
		?)
			usage
			exit
		;;
	esac
done


sample=${sample}
inputdir=${inputdir}
scriptsdir=${scriptsdir}
barcode_kits=${barcode_kits}


bash ${scriptsdir}/01.guppy.sh ${inputdir} ${barcode_kits}
bash ${scriptsdir}/02.merge.sh ${sample} ${inputdir}
bash ${scriptsdir}/03.bwa.sh ${sample} ${inputdir}
bash ${scriptsdir}/04.samtofastq.sh ${sample} ${inputdir}
bash ${scriptsdir}/05.fastqtofasta.sh ${sample} ${inputdir}
bash ${scriptsdir}/06.blastn.sh ${sample} ${inputdir}
bash ${scriptsdir}/07.blastfilter.sh ${sample} ${inputdir}
bash ${scriptsdir}/08.unique.sh ${sample} ${inputdir}
bash ${scriptsdir}/09.sortanduniq.sh ${sample} ${inputdir}
bash ${scriptsdir}/10.statistics.sh ${sample} ${inputdir}

