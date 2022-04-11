#coding= utf-8
import sys

filter=sys.argv[1]
name=sys.argv[2]
result=sys.argv[3]

outfile=open(result,'w')
dct={}
prot=open(name,'r').readlines()
for line in prot:
	linelist=line[:-1].split(' ')
	geneid=linelist[0][1:]
	name=' '.join(linelist[1:])
	dct[geneid]=name
Infile=open(filter,'r').readlines()
for line in Infile:
	if line[0]=="#":
		pass
	else:
		linelist=line[:-1].split('\t')
		id=linelist[1]
		query=linelist[0]
		other='\t'.join(linelist[2:])
		if id in dct.keys():
			outfile.write(id+'\t'+dct[id]+'\t'+query+'\t'+other+'\n')
outfile.close()


