#coding= utf-8
import sys
from Bio import SeqIO

fasta=sys.argv[1] #nohuman.fasta
infile=sys.argv[2] #blast_py.txt
OUTfile=sys.argv[3] #result.txt
percent=sys.argv[4] #float

dic = {}
lenth={}
name = ''
seq = ''
f=open(fasta,'r').readlines()
for line in f:
	if line.startswith('>'):
		linelist=line.split(' ')
		name = linelist[0][1:].strip('\n')
		seq = ''
	else :
		line = line.strip('\n')
		seq=seq+line
	dic[name]=seq
for i in dic:
	lenth[i]=str(len(dic[i]))

list=[]
outfile=open(OUTfile,'w')
Infile=open(infile,'r').readlines()
for line in Infile:
	linelist=line[:-1].split('\t')
	targetlength=int(linelist[8])-int(linelist[7])
	geneid='\t'.join(linelist[0:2])
	query=linelist[2]
	length=int(lenth[query])
	if targetlength >= float(percent)*length :
		if query not in list:
			list.append(query)
			outfile.write(line)
		else:
			pass
	else:
		pass
outfile.close()
