#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J reads_quality_control
#SBATCH --mail-type=ALL
#SBATCH --mail-user camille.humbert98@gmail.com
# Load modules
module load bioinfo-tools
module load FastQC
module load MultiQC
# Your commands
fastqc -o /home/camil/private/Genome_Analysis_Paper_4/analyses/1_assembly/1_1_reads_quality_control/RNA_trimmed /home/camil/private/trimmed_RNA/*fastq.gz
cd /home/camil/private/Genome_Analysis_Paper_4/analyses/1_assembly/1_1_reads_quality_control/RNA_trimmed
unzip '*.zip'
rm *.zip
multiqc .
