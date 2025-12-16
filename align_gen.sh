#!/bin/bash
genfile="/home/ch251006/HaLabDir/Alberto/Databases/Mouse_Ref_Gen/brca1/mm10_brca1"
genname="mm10"
inR1="INPNAME_R1.fastq.gz"
inR2="INPNAME_R2.fastq.gz"
out="INPNAME"
bowtie2 -p 8 -q --local -X 1000 -x $genfile -1 $inR1 -2 $inR2 -S "$out"_"$genname".sam
samtools view -h -S -b -F 0x08 -q 25 "$out"_"$genname".sam > "$out"_"$genname"_unsorted.bam
samtools fixmate -m "$out"_"$genname"_unsorted.bam "$out"_"$genname"_fixmate.bam
samtools sort "$out"_"$genname"_fixmate.bam > "$out"_"$genname"_sorted.bam
samtools markdup -r "$out"_"$genname"_sorted.bam "$out"_"$genname"_final.bam
samtools index "$out"_"$genname"_final.bam
samtools flagstat "$out"_"$genname"_final.bam > "$out"_"$genname"_flagstats.txt
