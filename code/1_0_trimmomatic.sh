#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:15:00
#SBATCH -J trimmomatic_for_untrimmed_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
# Load modules
module load bioinfo-tools
module load trimmomatic
# Your commands
java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 -phred33 -trimlog /home/camil/private/trimmed_RNA/trimlog_SRR4342137 /proj/g2020008/4_Thrash_2017/RNA_untrimmed/SRR4342137.1.fastq.gz /proj/g2020008/4_Thrash_2017/RNA_untrimmed/SRR4342137.2.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_1_unpaired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342137_2_unpaired.fastq.gz ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 -phred33 -trimlog /home/camil/private/trimmed_RNA/trimlog_SRR4342139 /proj/g2020008/4_Thrash_2017/RNA_untrimmed/SRR4342139.1.fastq.gz /proj/g2020008/4_Thrash_2017/RNA_untrimmed/SRR4342139.2.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_1_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_1_unpaired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_paired.fastq.gz /home/camil/private/trimmed_RNA/SRR4342139_2_unpaired.fastq.gz ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
